import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'adoptchatScreen.dart';

class MyDogScreen extends StatefulWidget {
  @override
  _MyDogScreenState createState() => _MyDogScreenState();
}

class _MyDogScreenState extends State<MyDogScreen> {
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
                  "반려동물 자랑 게시판",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xffA28BE7),
                  ),
                ),
              ),
              Container(
                width: size.width * (300 / 360),
                height: size.height * (80 / 640),
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
                          "우리 아이를 자랑해보세요!!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
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
                          width: size.width * (200 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "우리 강아지 보고 가세요~~",
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
                    child:Row(
                      children: [
                        Container(
                          width: size.width * (10 / 360),
                          height: size.height * (13 / 640),

                        ),
                        Container(
                          width: size.width * (200 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "우리 고양이 나비에요  ㅎㅎ",
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
                          width: size.width * (200 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "우리 고슴도치가 엄청 커졌네요 ㅋㅋㅋ",
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
                          width: size.width * (200 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "원래 강아지들이 다들 이런가요??",
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
                          width: size.width * (200 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "제가 직접 만든 우리 강아지 옷이랍니다",
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
                          width: size.width * (200 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "원래 강아지들이 다들 이런가요??",
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
                          width: size.width * (200 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "우리 미어캣입니당~~~",
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
                          width: size.width * (200 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "우리 강아지입니다",
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
                          width: size.width * (200 / 360),
                          height: size.height * (13 / 640),
                          child: Text(
                            "원래 고양이들이 다들 이런가요??",
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
