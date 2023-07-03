import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'adoptScreen.dart';
import 'careScreen.dart';

class CompleteScreen extends StatefulWidget {
  @override
  _CompleteScreenState createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {

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
        // 컬럼으로 교체
        // 자식들을
        children: <Widget>[
          titleSection(size) // titleSection 컨테이너 추가
        ],
      ),
    );
  }

  // 컨테이터 위젯 구현
  Widget titleSection(var size) {
    return Container(
      // 컨테이너 내부 상하좌우에 32픽셀만큼의 패딩 삽입
      // 자식으로 로우를 추가
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // 로우에 위젯들(Expanded, Icon, Text)을 자식들로 추가
        children: <Widget>[
          SizedBox(
            width: size.width * (20 / 360),
          ),

          // 첫번째 자식
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Container(
                height: size.height * (30/ 640),
                width: size.width * (320 / 360),
              ),

              Container(
                height: size.height * (180/ 640),
                width: size.width * (320 / 360),
                child: Image.asset('images/dog.png'),
              ),
              Container(
                height: size.height * (50/ 640),
                width: size.width * (320 / 360),

              ),

              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffA28BE7)),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  height: size.height * (34 / 640),
                  width: size.width * (320 / 360),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * (12 / 332),
                      ),
                      Text(
                        "품종 : 포메라리안",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        width: size.width * (12 / 332),
                      ),
                    ],
                  ),
                ),
              Container(
                height: size.height * (10 / 640),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffA28BE7)),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                height: size.height * (34 / 640),
                width: size.width * (320 / 360),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * (12 / 332),
                    ),
                    Text(
                      "평균 분양 가격 : 50만원",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: size.width * (12 / 332),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * (10 / 640),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffA28BE7)),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                height: size.height * (34 / 640),
                width: size.width * (320 / 360),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * (12 / 332),
                    ),
                    Text(
                      "추천 분양대상 : 온순한 성격의 반려견을 희망하는 사람",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: size.width * (12 / 332),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * (10 / 640),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffA28BE7)),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                height: size.height * (34 / 640),
                width: size.width * (320 / 360),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * (12 / 332),
                    ),
                    Text(
                      "등록 분양자 수 : 5명 ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: size.width * (12 / 332),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * (100 / 640),
              ),

              Row(
                children: [

                  InkWell(
                    onTap: () {
                      {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext) => CareScreen()));

                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(45.0)),
                        color: Color(0xffA28BE7),
                      ),
                      height: size.height * (40 / 640),
                      width: size.width * (102 / 360),

                      child: Center(
                        child: Text(
                          "돌봄 서비스",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),


                  Container(
                    height: size.height * (40 / 640),
                    width: size.width * (120 / 360),
                  ),
                  InkWell(
                    onTap: () {
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext) => AdoptScreen()));

                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(45.0)),
                        color: Color(0xffA28BE7),
                      ),
                      height: size.height * (40 / 640),
                      width: size.width * (102 / 360),

                      child: Center(
                        child: Text(
                          "분양 하러가기",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // 두번째 자식 아이콘
        ],
      ),
    );
  }
}
