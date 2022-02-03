import 'package:flutter/material.dart';
//import quote.dart class
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    //displayed in the homescreen
    home: QuoteList(), //instantiate the QuoteList class
  ));
}

//STATEFUL WIDGET
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  //variable declaration
  //declare a list of quotes
  List<Quote> quotes = [
    Quote(text: "Be yourself, everyone else is taken.", author: "Oscar Wilde"),
    Quote(
        text: "I have nothing to declare except my genius.",
        author: "Oscar Wilde"),
    Quote(text: "The truth is rarely pure and simple.", author: "Oscar Wilde")
  ];
  //function that will return a card widget template for our quotes
  //[return type] [function name]
  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote); //pass a quote parameter to the QuoteCard class
  }

  @override
  Widget build(BuildContext context) {
    //return a Scaffold
    return Scaffold(
      //body color
      backgroundColor: Colors.grey,
      //app bar
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
      ),
      //body property (column layout)
      body: Column(
          //.map cycle to a list of data
          //add ".toList()" at the end to resolve error and to turn the "quotes.map" into a List
          //because the "children property" expects a List
          //this returns an iterable and list widgets
          children: quotes.map((quote) => quoteTemplate(quote)).toList()),
    );
  }
}

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
