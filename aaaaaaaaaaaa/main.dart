hometask_threads_ui_clone_13july2023


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
      title: 'Material App',
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
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17),
                    child: Icon(
                      Icons.arrow_back,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 28),
                          child: Image.network(
                            "https://w7.pngwing.com/pngs/31/164/png-transparent-instagram-vector-brand-logos-icon.png",
                            width: 45,
                          ),
                        ),
                        Image.network(
                          "https://w7.pngwing.com/pngs/860/1022/png-transparent-computer-icons-button-menu-symbol-button-smiley-black-emoticon-thumbnail.png",
                          width: 29,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14, right: 14, top: 25),
              child: SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://yourwikis.com/wp-content/uploads/2020/01/mark-zuck-img.jpg"),
                            radius: 22,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 13),
                            child: Container(
                              height: 110,
                              width: 2,
                              color: Colors.amber[500],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 5),
                                    margin: EdgeInsets.only(top: 18),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWVufGVufDB8fDB8fHww&w=1000&q=80"),
                                      radius: 9,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://images.everydayhealth.com/images/mens-health/6-skincare-tips-men-should-always-follow-peter-kraus-00-722x406.jpg"),
                                    radius: 11,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://www.man-shop.eu/media/image/19/07/c7/HerrenBz6datKT7kMmG.png"),
                                radius: 6,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 213),
                                    child: SizedBox(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Text(
                                              "zuck",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          Icon(
                                            Icons.verified,
                                            color: Colors.blue[700],
                                            size: 18,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Text(
                                            "1d",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Icon(Icons.more_horiz),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7, bottom: 7),
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Threads reached 100 million sign ups over the",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Text(
                                        "weekend. That's mostly organic demand and we",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "haven't even turned on many promotions yet.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        "Can't believe it's only been 5 days!",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Image.network(
                                        "https://icon-library.com/images/instagram-heart-icon/instagram-heart-icon-17.jpg",
                                        width: 26,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 0),
                                      child: Image.network(
                                        "https://icon-library.com/images/instagram-comment-bubble-icon/instagram-comment-bubble-icon-13.jpg",
                                        width: 43,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 0),
                                      child: Image.network(
                                        "https://thenounproject.com/api/private/icons/2679046/edit/?backgroundShape=SQUARE&backgroundShapeColor=%23000000&backgroundShapeOpacity=0&exportSize=752&flipX=false&flipY=false&foregroundColor=%23000000&foregroundOpacity=1&imageFormat=png&rotation=0",
                                        width: 47,
                                      ),
                                    ),
                                    Image.network(
                                      "https://icon-library.com/images/send-icon/send-icon-18.jpg",
                                      width: 32,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "19,884 replies ․ 109K likes",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_sharp,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.post_add,
                  color: Colors.grey,
                ),
                label: " "),
            BottomNavigationBarItem(
                icon: Image.network(
                  "https://icon-library.com/images/instagram-heart-icon/instagram-heart-icon-17.jpg",
                  width: 36,
                ),
                label: " "),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.grey,
                ),
                label: " "),
          ],
        ),
      ),
    );
  }
}
