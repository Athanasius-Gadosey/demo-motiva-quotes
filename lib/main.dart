import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(
        author: 'Jake Spin', text: 'Keep faith in life it will surely happen'),
    Quote(
        author: 'Peter Park',
        text: 'The truth is rarely pure and never simple'),
    Quote(
        author: 'Hope Setiakor',
        text: 'Programming in life isn\'t easy, but needs hard-work'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        title: Text('Motivational Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[400],
        elevation: 0.0,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
