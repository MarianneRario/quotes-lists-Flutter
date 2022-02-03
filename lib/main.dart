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

    // instead of using this hard coded quotes, use Quote object
    // "Learning to write programs stretches your mind, and helps you think better, creates a way of thinking about things that I think is helpful in all domains.",
    // "A background in computer science provides a strong foundation for nearly any career path in any industry in the 21st-century economy.",
    // "Smooth seas do not make skillful sailors.",
    // "Learning to code is learning to create and innovate. We want our young people, who have such enormous talent, to acquire this skill, so that they will become the trailblazers who will shape and change our future."
  ];

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
          children: quotes
              .map((quote) => Text("${quote.text} - ${quote.author}"))
              .toList()),
    );
  }
}

//function that will return a card widget template for our quotes