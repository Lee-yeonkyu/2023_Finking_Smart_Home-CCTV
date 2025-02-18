import 'package:flutter/material.dart';
import 'package:guardian/src/pages/control_pages/pageholder.dart';
import 'package:guardian/src/pages/control_pages/tab_pages/webcam_screen.dart';

class SelectMode extends StatelessWidget {
  const SelectMode({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Column(children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 80, 0, 40),
                width: size.width * 0.8,
                height: size.height * 0.25,
                child: Text(
                  '모드를 선택해주세요.',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                width: 200,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => (CameraApp()),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.black.withOpacity(0.3),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(30),
                        child: Image.asset(
                          'assets/images/cctv.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Text(
                        'CCTV 모드',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Pageholder(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.black.withOpacity(0.3),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(30),
                        child: Image.asset(
                          'assets/images/control.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Text(
                        '관리자 모드',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ]);
          } else {
            return Center(
              child: Container(
                width: size.width * 0.8,
                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 80, 0, 40),
                      width: size.width * 0.8,
                      height: size.height * 0.25,
                      child: Text(
                        '모드를 선택해주세요.',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.2),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
                        width: 200,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => CameraApp(),
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(30),
                                child: Image.asset(
                                  'assets/images/cctv.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              Text(
                                'CCTV Mode',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => Pageholder(),
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.black.withOpacity(0.3),
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(30),
                                child: Image.asset(
                                  'assets/images/control.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              Text(
                                'Control Mode',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
            );
          }
        }),
      ),
    );
  }
}
