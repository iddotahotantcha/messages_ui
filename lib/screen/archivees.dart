import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:messages/config.dart';

class Archivees extends StatefulWidget {
  const Archivees({super.key});

  @override
  State<Archivees> createState() => _ArchiveesState();
}

class _ArchiveesState extends State<Archivees> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor,
        title: Text(
          "Archivées",
          style: TextStyle(
            color: TextColor,
            fontSize: 25.0,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                //
              },
              icon: Icon(
                Icons.more_vert,
                color: TextColor,
                size: 25.0,
              )),
        ],
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: AppColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lotties/1.json',
              height: screenHeight/4,
            ),
            Text(
              "Les conversations archivées \n s'affichent ici.",
              style: TextStyle(
                color: TextColor,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
