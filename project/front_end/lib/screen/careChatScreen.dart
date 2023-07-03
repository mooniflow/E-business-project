import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'adoptScreen.dart';
import 'careScreen.dart';

class CareChatScreen extends StatefulWidget {
  @override
  _CareChatScreenState createState() => _CareChatScreenState();
}

class _CareChatScreenState extends State<CareChatScreen> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 2, //앱바 줄 사라짐
        backgroundColor: Colors.white,

        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color:Color(0xffA28BE7),
            icon: Icon(Icons.arrow_back)),

      ),
      body: Column(
        children: <Widget>[
          titleSection(size) // titleSection 컨테이너 추가
        ],
      ),
    );
  }

  // 컨테이터 위젯 구현
  Widget titleSection(var size) {
    return Container(
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
                height: size.height * (20 / 640),
              ),
              Row(
                children: [
                  Container(
                    width: size.width * (130 / 360),
                  ),
                  Container(
                      child: Text(
                        "-2020년 7월 31일-",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 9,
                          color: Color(0xffA28BE7),
                        ),
                      ),


                  ),
                ],
              ),
              Container(
                height: size.height * (20 / 640),

              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  color: Color(0xffEDE7FF),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                height: size.height * (34 / 640),
                width: size.width * (200 / 360),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * (12 / 332),
                    ),
                    Text(
                      "12월 1일 1시부터 5시까지 가능할까?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: size.width * (12 / 332),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * (20 / 640),
              ),
              Row(
                children: [
                  Container(
                    width: size.width * (230 / 360),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      color: Color(0xffEDE7FF),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    height: size.height * (34 / 640),
                    width: size.width * (100 / 360),
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * (12 / 332),
                        ),
                        Text(
                          "네 가능합니다!!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: size.width * (12 / 332),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * (20 / 640),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      color: Color(0xffEDE7FF),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    height: size.height * (34 / 640),
                    width: size.width * (110 / 360),
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * (12 / 332),
                        ),
                        Text(
                          "ooo로 와주세요~",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: size.width * (12 / 332),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * (20 / 640),
              ),
              Row(
                children: [
                  Container(
                    width: size.width * (280 / 360),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      color: Color(0xffEDE7FF),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    height: size.height * (34 / 640),
                    width: size.width * (50 / 360),
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * (12 / 332),
                        ),
                        Text(
                          "넵~!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: size.width * (12 / 332),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * (260 / 640),
              ),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(45.0)),
                        color: Color(0xffEDE7FF),
                      ),
                      height: size.height * (32 / 640),
                      width: size.width * (320 / 360),


                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            children: [
                              Container(
                                width: size.width * (10 / 360),
                              ),
                              Text(
                                  "메세지를 입력하세요",
                                  style: TextStyle(
                                    color: Color(0xff888888),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              Container(
                                width: size.width * (180 / 360),
                              ),
                              Text(
                                "전송",
                                style: TextStyle(
                                  color: Color(0xffA28BE7),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),


                    ),
                ],
          ),
        ],
      ),
    );
  }
}
