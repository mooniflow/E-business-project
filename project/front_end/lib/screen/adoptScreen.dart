import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'adoptchatScreen.dart';

class AdoptScreen extends StatefulWidget {
  @override
  _AdoptScreenState createState() => _AdoptScreenState();
}

class _AdoptScreenState extends State<AdoptScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0, //앱바 줄 사라짐
        backgroundColor: Colors.white,

        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey,
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
            width: size.width * (30 / 360),
          ),

          // 첫번째 자식
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  "분양 서비스 게시판",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xffA28BE7),
                  ),
                ),
              ),
              Container(
                height: size.height * (30 / 640),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffA28BE7)),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                height: size.height * (34 / 640),
                width: size.width * (300 / 360),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * (12 / 332),
                    ),
                    Icon(Icons.search),
                    Text(
                      "  포메라리안",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: size.width * (12 / 332),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width * (300 / 360),
                height: size.height * (100 / 640),
              ),
              Container(
                width: size.width * (300 / 360),
                height: size.height * (30 / 640),
                color: Color(0xffA28BE7),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Container(
                        width: size.width * (10 / 360),
                        height: size.height * (13 / 640),
                      ),
                      Text(
                        "성별",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: size.width * (50 / 360),
                        height: size.height * (13 / 640),
                      ),
                      Text(
                        "나이",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: size.width * (50 / 360),
                        height: size.height * (13 / 640),
                      ),
                      Text(
                        "지역",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: size.width * (50 / 360),
                        height: size.height * (13 / 640),
                      ),
                      Text(
                        "분양가",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => AdoptChatScreen()));
                  }
                },
                child: Container(
                  width: size.width * (300 / 360),
                  height: size.height * (40 / 640),
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(color: Color(0xffCCCCCC)))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * (10 / 360),
                          height: size.height * (13 / 640),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "남",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "3세",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "서울",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (60 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "500,000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => AdoptChatScreen()));
                  }
                },
                child: Container(
                  width: size.width * (300 / 360),
                  height: size.height * (40 / 640),
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(color: Color(0xffCCCCCC)))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * (10 / 360),
                          height: size.height * (13 / 640),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "여",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "2세",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "성남",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (60 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "550.000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => AdoptChatScreen()));
                  }
                },
                child: Container(
                  width: size.width * (300 / 360),
                  height: size.height * (40 / 640),
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(color: Color(0xffCCCCCC)))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * (10 / 360),
                          height: size.height * (13 / 640),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "남",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "3세",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "부산",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (60 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "520,000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => AdoptChatScreen()));
                  }
                },
                child: Container(
                  width: size.width * (300 / 360),
                  height: size.height * (40 / 640),
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(color: Color(0xffCCCCCC)))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * (10 / 360),
                          height: size.height * (13 / 640),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "여",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "5세",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "일산",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (60 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "480,000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => AdoptChatScreen()));
                  }
                },
                child: Container(
                  width: size.width * (300 / 360),
                  height: size.height * (40 / 640),
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(color: Color(0xffCCCCCC)))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * (10 / 360),
                          height: size.height * (40 / 640),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "여",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "4세",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (70 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "서울",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (60 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "500,000",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                      ],
                    ),
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
