import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework_project/screen/adoptScreen.dart';
import 'package:homework_project/screen/careScreen.dart';
import 'package:homework_project/screen/myDogScreen.dart';
import 'package:homework_project/screen/photoScreen.dart';


class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0, //앱바 줄 사라짐
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[titleSection(size)],
      ),
    );
  }

  // 컨테이터 위젯 구현
  Widget titleSection(var size) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: size.width * (20 / 360),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Container(
                height: size.height * (70 / 640),


              ),

              Row(
                children: [
                  Container(
                    height: size.height * (151 / 640),
                    width: size.width * (151 / 360),
                    color: Color(0xffF7F7F7),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(
                              0xffF6F6F6)) // fromHeight use double.infinity as width and 40 is the height
                          ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (Context) => PhotoScreen())
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: size.height * (28 / 640),
                            width: size.width * (151 / 360),
                          ),

                          Container(
                            height: size.height * (24.26 / 640),
                            width: size.width * (151 / 360),
                          ),
                          Text(
                            "사진 찍기",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "관심 동물을 찍어보세요",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffCBCBCB),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),//첫번쨰 박스
                  Container(
                    width: size.width * (21 / 360),
                  ),
                  Container(
                    height: size.height * (151 / 640),
                    width: size.width * (152 / 360),
                    color: Color(0xffF7F7F7),
                    child: ElevatedButton(

                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(
                              0xffF6F6F6)) // fromHeight use double.infinity as width and 40 is the height
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (Context) => AdoptScreen())
                        );
                      },
                      child: Column(
                        children: [

                          Container(
                            height: size.height * (52.26 / 640),
                            width: size.width * (151 / 360),
                          ),
                          Text(
                            "분양하러 가기",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "반려동물을 입양해 보세요",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffCBCBCB),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),//2번째 박스
                ],
              ),
              Container(
                height: size.height * (70 / 640),
              ),
              Row(
                children: [
                  Container(
                    height: size.height * (151 / 640),
                    width: size.width * (151 / 360),
                    color: Color(0xffF7F7F7),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(
                              0xffF6F6F6)) // fromHeight use double.infinity as width and 40 is the height
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (Context) => CareScreen())
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: size.height * (28 / 640),
                            width: size.width * (151 / 360),
                          ),

                          Container(
                            height: size.height * (24.26 / 640),
                            width: size.width * (151 / 360),
                          ),
                          Text(
                            "돌봄 서비스",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "돌봄 서비스를 신청하세요",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffCBCBCB),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),//첫번쨰 박스
                  Container(
                    width: size.width * (21 / 360),
                  ),
                  Container(
                    height: size.height * (151 / 640),
                    width: size.width * (152 / 360),
                    color: Color(0xffF7F7F7),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(
                              0xffF6F6F6)) // fromHeight use double.infinity as width and 40 is the height
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (Context) => MyDogScreen())
                        );
                      },
                      child: Column(
                        children: [

                          Container(
                            height: size.height * (52.26 / 640),
                            width: size.width * (151 / 360),
                          ),
                          Text(
                            "자랑하기",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "반려 동물을 자랑해보세요",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffCBCBCB),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),//2번째 박스
                ],
              ),
              Container(
                height: size.height * (130 / 640),
              ),
              Row(
                children: [
                  Container(
                    height: size.height * (12 / 640),
                    width: size.width * (128 / 360),
                  ),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


