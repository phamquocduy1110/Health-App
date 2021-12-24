import 'package:bruhh/config/palette.dart';
import 'package:bruhh/widget/app_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  List images = [
    "midodrine-hydrochloride.jpg",
    "isotretinoin.jpeg",
    "depakote.jpg",
    "asacol-hd.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(
      length: 2,
      vsync: this,
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 40,
                  color: Palette.p5,
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Palette.p5),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: AppText(
              text: "Trang chủ",
              color: Palette.textNo,
              size: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelColor: Palette.textNo,
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                unselectedLabelColor: Palette.textNo.withOpacity(0.5),
                indicatorSize: (TabBarIndicatorSize.label),
                indicator: Cricle(color: Palette.p5, radius: 4),
                isScrollable: true,
                controller: _tabController,
                tabs: [
                  Tab(
                    text: "Xu hướng",
                  ),
                  Tab(
                    text: "Yêu thích",
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              children: [
                ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20, top: 10),
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: Palette.wellComeScreen,
                        image: DecorationImage(
                          image: AssetImage("img" + images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
                Text("data")
              ],
              controller: _tabController,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // Container(
          //   margin: EdgeInsets.only(left: 20, right: 20),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       AppText(
          //         text: "Khám phá thêm",
          //         color: Palette.textNo,
          //         size: 18,
          //         fontWeight: FontWeight.w400,
          //       ),
          //       AppText(
          //         text: ">>>",
          //         color: Palette.p5,
          //         size: 18,
          //         fontWeight: FontWeight.w300,
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Container(
          //   width: double.maxFinite,
          //   height: 100,
          //   margin: EdgeInsets.only(
          //     left: 20,
          //   ),
          //   child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: 4,
          //       itemBuilder: (_, index) {
          //         return Container(
          //           margin: EdgeInsets.only(right: 20),
          //           child: Column(
          //             children: [
          //               Container(
          //                 width: 80,
          //                 height: 80,
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(20),
          //                   color: Palette.p2,
          //                 ),
          //               ),
          //               Container(
          //                 child: AppText(
          //                   text: 'So sánh',
          //                   fontWeight: FontWeight.w400,
          //                   color: Palette.textNo,
          //                   size: 15,
          //                 ),
          //               )
          //             ],
          //           ),
          //         );
          //       }),
          // ),
        ],
      ),
    );
  }
}

//Vẽ hình tròn
class Cricle extends Decoration {
  final Color color;
  double radius;

  Cricle({
    required this.color,
    required this.radius,
  });
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CriclePainter(
      color: color,
      radius: radius,
    );
  }
}

class CriclePainter extends BoxPainter {
  final Color color;
  double radius;

  CriclePainter({
    required this.color,
    required this.radius,
  });
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffet = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffet, radius, _paint);
  }
}
