import 'package:flutter/material.dart';
//import quote.dart class
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  //to accept the parameter, create a constructor
  final Quote quote;

  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          //stretch the card from left to right
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //text container for Quote Text
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            //vertical space using sizedbox
            const SizedBox(
              height: 6.0,
            ),
            //text container for Quote Author
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }
}
