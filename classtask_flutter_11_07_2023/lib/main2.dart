// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(const ThreadsUiClone());

class ThreadsUiClone extends StatelessWidget {
  const ThreadsUiClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(backgroundColor: Colors.white)),
      debugShowCheckedModeBanner: false,
      title: 'Threads UI APP',
      home: Scaffold(
        appBar: AppBar(
          title: Image.network(
            "https://seeklogo.com/images/T/threads-logo-E9BA734BF6-seeklogo.com.png?v=638242470460000000",
            width: 50,
            height: 50,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        //Obsi Padding
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          //Obsi Column
          child: Column(
            children: [
              //Birinci Column Buttonlar
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              size: 40,
                              color: Colors.black,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Image.network(
                                "https://w7.pngwing.com/pngs/31/164/png-transparent-instagram-vector-brand-logos-icon.png",
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Image.network(
                              "https://w7.pngwing.com/pngs/860/1022/png-transparent-computer-icons-button-menu-symbol-button-smiley-black-emoticon-thumbnail.png",
                              width: 33,
                              height: 33,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //Ikinci Column Container
              Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Container Row 1 (sekiller olan)
                  Row(

                    children: [
                      //Container Row 1 Column 1
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://yourwikis.com/wp-content/uploads/2020/01/mark-zuck-img.jpg"),
                            radius: 30,
                          ),
                        ],
                      ),
                      //Container Row 1 Column 2
                      Column(),
                      //Container Row 1 Column 3
                      Column(),
                    ],
                  ),
                  
                  //Container Row 2 (Yazilar Olan)
                  Row(
                    children: [
                      //Container Row 2 Column 1
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Text(
                                  "zuck",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Icon(
                                Icons.verified,
                                color: Colors.blue[700],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.more_horiz,
                                size: 40,
                              ),
                            ],
                          ),
                        ],
                      ),
                      //Container Row 2 Column 2
                      Column(),
                      //Container Row 2 Column 3
                      Column(),
                      //Container Row 2 Column 4
                      Column(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}