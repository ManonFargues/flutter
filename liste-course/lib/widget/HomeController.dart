import 'package:flutter/material.dart';

import 'ListModel.dart';

class HomeController extends StatefulWidget {
  @override
  _HomeControllerState createState() => _HomeControllerState();
}


class _HomeControllerState extends State<HomeController> {
  List<Produit> produit = [
    Produit(nom: 'Salade', prix: '5'),
    Produit(nom: 'Paté', prix: '5'),
    Produit(nom: 'Granola', prix: '5'),
    Produit(nom: 'Steak', prix: '5'),
    Produit(nom: 'Ice tea', prix: '5'),
    Produit(nom: 'Poisson', prix: '5'),
    Produit(nom: 'Pain', prix: '5'),
    Produit(nom: 'Lait', prix: '5'),
  ];

  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Ma liste de course'.toUpperCase(),
        ),
      ),

      /*Liste des produits*/
      body: ListView.builder(
          itemCount: produit.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
              child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: checkBoxValue,
                      onChanged: (bool value){
                        setState(() {
                          checkBoxValue = value;
                        });
                      },
                    ),
                    Text(produit[index].nom)
                  ]
              ),
            );
          }),
    );
  }
}
