import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:messages/config.dart';
import 'package:messages/screen/archivees.dart';
import 'package:messages/screen/nouvelle_conversation.dart';
import 'package:messages/screen/spam.dart';

import 'aide.dart';
import 'parametres.dart';

class PagePrincipale extends StatefulWidget {
  const PagePrincipale({super.key});

  @override
  State<PagePrincipale> createState() => _PagePrincipaleState();
}

class _PagePrincipaleState extends State<PagePrincipale> {
  static const menuItems = <String>[
    'Tout marquer comme lu',
    'Archivées',
    'Spam et conversations bloquées',
    'Paramètres',
    'Aide et commentaires',
  ];

  final List<PopupMenuItem<String>> _popUpMenuItems = menuItems
      .map((String value) => PopupMenuItem<String>(
            value: value,
            child: Text(value),
          ))
      .toList();

  late String _btn3SelectedVal;

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

  final ScrollController _scrollController = ScrollController();
  bool _showFullFAB = true; // Contrôle l'affichage complet ou réduit du FAB

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_showFullFAB) {
          setState(() {
            _showFullFAB = false; // Réduit le FAB
          });
        }
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_showFullFAB) {
          setState(() {
            _showFullFAB = true; // Affiche le FAB complet
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image(image: AssetImage("assets/images/google.png")),
        ),
        backgroundColor: AppColor,
        title: Text(
          "Messages",
          style: TextStyle(
            color: TextColor,
            fontSize: 25.0,
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            color: TextColor,
            iconSize: 30.0,
            onSelected: (String newValue) {
              _btn3SelectedVal = newValue;

              // Navigation vers les pages selon l'option choisie
              switch (newValue) {
                case 'Archivées':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Archivees()),
                  );
                  break;
                case 'Spam et conversations bloquées':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Spam()),
                  );
                  break;
                case 'Paramètres':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Parametres()),
                  );
                  break;
                case 'Aide et commentaires':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Aide()),
                  );
                  break;
                default:
                  // Afficher une snackbar si aucune navigation n'est associée
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$newValue'),
                    ),
                  );
                  break;
              }
            },
            itemBuilder: (BuildContext context) => _popUpMenuItems,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColor,
        ),
        child: ListView.builder(
          controller: _scrollController, // Attach le ScrollController ici
          itemCount: 30,
          itemBuilder: (context, index) {
            Color circleColor = colors[index % colors.length];
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
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  color: TextColor,
                  fontSize: 17.0,
                ),
              ),
              trailing: Text(
                "1/10 17:54",
                style: TextStyle(
                  color: TextColor,
                  fontSize: 13.0,
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        child: _showFullFAB
            ? Container(
                key: ValueKey("full_fab"),
                width: 250.0,
                child: FloatingActionButton(
                  backgroundColor: Color(0xFF45C5FB),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => NouvelleConversation()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.messenger_outline_sharp,
                        color: AppColor,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        "Démarrer une discussion",
                        style: TextStyle(
                            color: AppColor,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            : FloatingActionButton(
                key: ValueKey("icon_fab"),
                backgroundColor: Color(0xFF45C5FB),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => NouvelleConversation()));
                },
                child: Icon(
                  Icons.messenger_outline_sharp,
                  color: AppColor,
                ),
              ),
      ),
    );
  }
}
