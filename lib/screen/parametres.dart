import 'package:flutter/material.dart';
import 'package:messages/config.dart';

class Parametres extends StatefulWidget {
  const Parametres({super.key});

  @override
  State<Parametres> createState() => _ParametresState();
}

class _ParametresState extends State<Parametres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor,
        title: Text(
          "Paramètres",
          style: TextStyle(
            color: TextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(221, 34, 34, 34),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Général",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: TextColor,
                ),
              ),
            ),
            Divider(
              color: TextColor,
            ),
            ListTile(
              title: Text(
                "MTN Bénin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: TextColor,
                ),
              ),
              subtitle: Text(
                "XX XX XX XX",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: TextColor,
                ),
              ),
            ),
            Divider(
              color: TextColor,
            ),
            ListTile(
              title: Text(
                "MOOV AFTRICA BJ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: TextColor,
                ),
              ),
              subtitle: Text(
                "XX XX XX XX",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: TextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}