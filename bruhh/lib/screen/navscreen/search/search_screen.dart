import 'package:bruhh/config/palette.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  final String? searchKeyWord;
  const SearchScreen({
    Key? key,
    this.searchKeyWord,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

final TextEditingController _textEditingController = TextEditingController();

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Palette.p1,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: size.height,
          width: size.width,
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(20),
                    //   color: Palette.online,
                    // ),
                    child: TextField(
                      style: TextStyle(fontSize: 20),
                      autofocus: true,
                      controller: _textEditingController,
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        hintText: "Tìm kiếm",
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
