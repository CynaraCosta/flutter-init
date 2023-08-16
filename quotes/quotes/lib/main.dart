import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'package:quotes/quote_card.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
      Quote(text: 'Be yourself; everyone else is already taken', author: 'Harry Styles'),
      Quote(text: 'I have nothing to decalre except my genius', author: 'Albert Einstein'),
      Quote(text: 'The truth is rarely pure and never simple', author: 'Cybelly Costa'),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Awesome Quotes'
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          quotes: quotes,
        )).toList(),
      ),
    );
  }
}

