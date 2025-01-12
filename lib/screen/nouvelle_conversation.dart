import 'package:flutter/material.dart';
import 'package:messages/config.dart';

class NouvelleConversation extends StatefulWidget {
  const NouvelleConversation({super.key});

  @override
  State<NouvelleConversation> createState() => _NouvelleConversationState();
}

class _NouvelleConversationState extends State<NouvelleConversation> {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.pink,
    Colors.teal,
  ];

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
                  SizedBox(
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
                        //color: Color(0xFF45C5FB),
                        border: Border.all(
                          color: Color(0xFF45C5FB),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sim_card_outlined,
                          color: Color(0xFF45C5FB),
                        ),
                        SizedBox(width: 10.0),
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
              itemCount: 31, // Augmenté de 1 pour inclure le bouton au début
              itemBuilder: (context, index) {
                if (index == 0) {
                  // Si c'est le premier élément, on affiche un bouton
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                      left: 15.0,
                      right: 200.0
                    ),
                    child: InkWell(
                      onTap: () {
                        // *
                      },
                      child: Container(
                        height: 50.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 2, 165, 235),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_add_alt,
                              color: TextColor,
                              size: 30.0,
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              'Mon Bouton',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: TextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  // Sinon, on affiche les ListTile classiques
                  Color circleColor = colors[(index - 1) %
                      colors
                          .length]; // Utilisation de index-1 pour ne pas changer l'ordre des couleurs
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: circleColor,
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
                }
              },
            ))
          ],
        ),
      ),
    );
  }
}
