import 'dart:io';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework_project/screen/completeScreen.dart';
import 'package:image_picker/image_picker.dart';

class PhotoScreen extends StatefulWidget {

  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}


class _PhotoScreenState extends State<PhotoScreen> {

  PickedFile? _image;

  bool _next(){
    return _image!=null;
  }

  Future getImageFromCam() async{
    var image = await ImagePicker.platform.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image!;
    });
  }

  Future getImageFromGallery() async{
    var image = await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image!;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
          Container(
            height: size.height*(29/640),
          ),
          titleSection(size),
        ],
      ),
    );
  }

  // 컨테이터 위젯 구현
  Widget titleSection(size) {
    return Container(
      child: Row(children: <Widget>[
        Container(
          width: size.width * (20 / 360),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "원하는 동물 사진을 선택해주세요.",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold // 텍스트 강조 설정
                  ),
                ),
              ),
              Container(
                height: size.height * (20 / 640),
              ),
              Text(
                '클릭해서 동물 사진을 업로드 해주세요',
                style: TextStyle(
                    fontSize: 12, color: Color(0xff888888) // 텍스트의 색상을 설정
                ),
              ),
              Container(
                height: size.height * (60/ 640),
              ),

              Row(
                children: [
                  Container(
                    height: size.height * (180/ 640),
                    width: size.width * (40/ 380),
                  ),
                  Container(
                    height: size.height * (180/ 640),
                    width: size.width * (250/ 380),
                    child: Container(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200.0,
                        child: Center(
                            child: _image == null
                                ?Container(
                              child: Icon(Icons.add,
                                  size: 40,
                                  color: Color(0xffA28BE7)),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: Color(0xffEEEEEE)),
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.white
                              ),
                              alignment: Alignment.center,
                              width: size.width *(336/380),
                              height: size.height * (180/ 640),
                            )
                                :
                            Container(
                              child: Image.file(File(_image!.path,),
                                fit: BoxFit.fitWidth,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: Color(0xffEEEEEE)),
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.white
                              ),
                              alignment: Alignment.center,
                              width: size.width *(336/380),
                              height: size.height * (180/ 640),
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * (50/ 640),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton.extended(
                    onPressed: getImageFromCam,
                    backgroundColor:  Color(0xff888888),
                    tooltip: 'Pick Image',
                    label: Text("사진 찍기"),
                  ),
                  FloatingActionButton.extended(
                    backgroundColor:  Color(0xff888888),
                    onPressed: getImageFromGallery,
                    tooltip: 'Pick Image',
                    label: Text("사진 업로드 하기"),


                  ),
                ],
              ),

              Container(
                height: size.height * (85 / 640),
              ),

              Row(
                children: [
                  Container(
                    height: size.height * (40/640),
                    width: size.width * (104/360),
                  ),
                  InkWell(
                    onTap: () {
                      {
                        if (_image != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext) => CompleteScreen()));
                        }
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(45.0)),
                        color: _next() ? Color(0xffA28BE7) : Color(0xfffD0D0D0),
                      ),
                      height: size.height * (40 / 640),
                      width: size.width * (122 / 360),

                      child: Center(
                        child: Text(
                          "완료",
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
        ),
      ]),
    );
  }

}
