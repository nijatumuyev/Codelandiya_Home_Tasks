// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

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
        body: Column(
          children: [
            Container(
              child: Row(
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
