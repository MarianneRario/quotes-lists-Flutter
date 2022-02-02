import 'package:flutter/material.dart';

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
  List<String> quotes = [
    "If you think education is expensive, try estimating the cost of ignorance.",
    "Education without application is just entertainment.",
    "Smooth seas do not make skillful sailors.",
    "The key to pursuing excellence is to embrace an organic, long-term learning process, and not to live in a shell of static, safe mediocrity. Usually, growth comes at the expense of previous comfort or safety.",
    "Change is the end result of all true learning."
  ];

  @override
  Widget build(BuildContext context) {
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
        children: const <Widget>[],
      ),
    );
  }
}
