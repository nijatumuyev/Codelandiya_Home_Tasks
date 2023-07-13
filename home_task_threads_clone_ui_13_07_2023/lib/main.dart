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
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(
              Icons.arrow_back,
              size: 35,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 28),
              child: Image.network(
                "https://w7.pngwing.com/pngs/31/164/png-transparent-instagram-vector-brand-logos-icon.png",
                width: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Image.network(
                "https://w7.pngwing.com/pngs/860/1022/png-transparent-computer-icons-button-menu-symbol-button-smiley-black-emoticon-thumbnail.png",
                width: 29,
              ),
            ),
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 25, bottom: 10),
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
                                "19,884 replies • 109K likes",
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.amber[200],
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 15, bottom: 10),
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
                              height: 40,
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
                                          "https://i0.wp.com/businessday.ng/wp-content/uploads/2019/10/girlChild.png?fit=620%2C349"),
                                      radius: 9,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://cdn.cliqueinc.com/posts/300545/cool-girl-items-300545-1655259464137-promo.700x0c.jpg"),
                                    radius: 11,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://www.elle.be/nl/wp-content/uploads/2018/01/cool_girl_2.jpg"),
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
                                            "3d",
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Beautiful work out there",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        "@alexvolkanovski",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w600,
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
                                "6,509 replies  • 35.1K likes",
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.amber[200],
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 25, bottom: 10),
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
                              height: 68,
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
                                          "https://static.standard.co.uk/2023/01/26/09/urnpublicidap.org522a528046d84d4aad9a5602b78bba2d.jpg?width=968"),
                                      radius: 9,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://www.houseofwellness.com.au/wp-content/uploads/2023/01/vanilla-girl-make-up.jpg"),
                                    radius: 11,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://www.nuvoledibellezza.com/wp-content/uploads/2023/03/vanilla-girl-make-up-04.jpeg"),
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
                                            "4d",
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
                                      "70 million sign ups on Threads as of this",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Text(
                                        "morning. Way beyond our expectations.",
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
                                "56,968 replies • 332K likes",
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.amber[200],
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 25, bottom: 10),
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
                              height: 228,
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
                                          "https://ath2.unileverservices.com/wp-content/uploads/sites/3/2020/04/IG-annvmariv-1024x1016.jpg"),
                                      radius: 9,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Outdoors-man-portrait_%28cropped%29.jpg/1200px-Outdoors-man-portrait_%28cropped%29.jpg"),
                                    radius: 11,
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/8350416/pexels-photo-8350416.jpeg?cs=srgb&dl=pexels-mikhail-nilov-8350416.jpg&fm=jpg"),
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
                                            "5d",
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
                                      "Lots of work on basic capabilities this morning",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, bottom: 5),
                                      child: Image.network(
                                        "https://www.etonline.com/sites/default/files/styles/max_1280x720/public/images/2016-10/1280_mark_zuckerberg_max.jpg?itok=WhK32Eo-",
                                        width: 320,
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
                                "24,145 replies • 262K likes",
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.amber[200],
              ),
            ],
          ),
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
