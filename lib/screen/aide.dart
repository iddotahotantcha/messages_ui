import 'package:flutter/material.dart';
import 'package:messages/config.dart';

class Aide extends StatefulWidget {
  const Aide({super.key});

  @override
  State<Aide> createState() => _AideState();
}

class _AideState extends State<Aide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor,
        title: Text(
          "Aide",
          style: TextStyle(
            color: TextColor,
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
        child: Column(
          children: [
            Container(
              height: 175.0,
              width: 500.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(221, 143, 143, 143),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.0),
                    Text(
                      "Ressources d'aide populaires",
                      style: TextStyle(
                        color: TextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "Aucun résultat retrouvé.",
                      style: TextStyle(
                        color: TextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 50.0,
                      width: 375,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: const Color.fromARGB(179, 85, 84, 84),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                              size: 30.0,
                              color: TextColor,
                            ),
                            labelText: "Rechercher dans l'aide",
                            labelStyle: TextStyle(
                              fontSize: 20.0,
                              color: TextColor,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Divider(
              color: TextColor,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.message_outlined,
                ),
              ),
              title: Text(
                "Envoyer des commentaires",
                style: TextStyle(
                  fontSize: 18.0,
                  color: TextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: TextColor,
            ),
          ],
        ),
      ),
    );
  }
}