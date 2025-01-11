import 'package:flutter/material.dart';
import 'package:messages/config.dart';

class Spam extends StatefulWidget {
  const Spam({super.key});

  @override
  State<Spam> createState() => _SpamState();
}

class _SpamState extends State<Spam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor,
        title: Text(
          "Spam et conversations bloquées",
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