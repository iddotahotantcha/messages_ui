import 'package:flutter/material.dart';
import 'package:messages/config.dart';

class Archivees extends StatefulWidget {
  const Archivees({super.key});

  @override
  State<Archivees> createState() => _ArchiveesState();
}

class _ArchiveesState extends State<Archivees> {
  @override
  Widget build(BuildContext context) {
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
            onPressed: (){
              //
            }, 
            icon: Icon(
              Icons.more_vert,
              color: TextColor,
              size: 25.0,
            )
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColor,
        ),
      ),
    );
  }
}