import 'package:bruhh/config/palette.dart';
import 'package:bruhh/widget/app_text.dart';
import 'package:flutter/material.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({Key? key}) : super(key: key);

  @override
  _WellcomeScreenState createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/" + images[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // AppText(
                        //   text: "THUỐC ME",
                        //   color: Palette.textNo,
                        //   size: 40,
                        //   fontWeight: FontWeight.w400,
                        // ),
                        Container(
                          width: 250,
                          child: AppText(
                            text: "Chào mừng bạn đến với Thuốc Me",
                            color: Palette.textNo,
                            size: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 250,
                          child: AppText(
                            text:
                                "Thông tin thuốc cho người dùng, khi mới bắt đầu dùng thuốc và giúp người dùng tìm hiểu thêm về thông tin thuốc mà họ đang dùng hoặc sắp dùng",
                            color: Palette.textNo.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          width: 8,
                          margin: EdgeInsets.only(bottom: 5),
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? Palette.p5
                                : Palette.p5.withOpacity(0.5),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
