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
                    padding: EdgeInsets.only(left: 28),
                    child: Icon(
                      Icons.arrow_back,
                      size: 40,
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
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 25),
              child: SizedBox(
                // width: MediaQuery.of(context).size.width,

                child: Row(
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://yourwikis.com/wp-content/uploads/2020/01/mark-zuck-img.jpg"),
                            radius: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 13, bottom: 13),
                            child: Container(
                              height: 110,
                              width: 3,
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
                                      radius: 12,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://images.everydayhealth.com/images/mens-health/6-skincare-tips-men-should-always-follow-peter-kraus-00-722x406.jpg"),
                                    radius: 16,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://www.man-shop.eu/media/image/19/07/c7/HerrenBz6datKT7kMmG.png"),
                                radius: 9,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
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
                                                fontSize: 20),
                                          ),
                                        ),
                                        Icon(
                                          Icons.verified,
                                          color: Colors.blue[700],
                                          size: 22,
                                        ),
                                      ],
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
                                                fontSize: 23,
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
                                child: Row(
                                  children: [
                                    Text(
                                      "Threads reached 100 million sign ups over the\n weekend."
                                      "That's mostly organic demand and we\n haven't even turned "
                                      "on many promotions yet.\n Can't believe it's only been 5 days!",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Icon(Icons.heart_broken),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Icon(Icons.comment),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Icon(Icons.share),
                                    ),
                                    Icon(Icons.send),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                "19,884 replies ․ 109K likes",
                                style: TextStyle(
                                  fontSize: 16,
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
                  color: Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.post_add,
                  color: Colors.grey,
                ),
                label: " "),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.heart_broken,
                  color: Colors.grey,
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