import 'package:flutter/material.dart';
import 'package:messages/config.dart';

class NouvelleConversation extends StatefulWidget {
  const NouvelleConversation({super.key});

  @override
  State<NouvelleConversation> createState() => _NouvelleConversationState();
}

class _NouvelleConversationState extends State<NouvelleConversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor,
        title: Text(
          "Nouvelle conversation",
          style: TextStyle(
            color: TextColor,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    "A :",
                    style: TextStyle(color: TextColor, fontSize: 18.0),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    width: 350.0,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Saisissez des noms, numéros ou e-mails",
                          hintStyle: TextStyle(
                            color: TextColor,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    "Chez :",
                    style: TextStyle(color: TextColor, fontSize: 18.0),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    height: 30.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xFF45C5FB),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sim_card_outlined,
                        ),
                        Text(
                          "MTN Bénin",
                          style: TextStyle(color: TextColor, fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.person,
                        color: TextColor,
                      ),
                    ),
                    title: Text(
                      "Lorem Ipsum",
                      style: TextStyle(
                        color: TextColor,
                        fontSize: 20.0,
                      ),
                    ),
                    subtitle: Text(
                      "+229 01XXXXXXXX",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: TextColor,
                        fontSize: 17.0,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
