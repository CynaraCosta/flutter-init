import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

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

  Widget quoteTemplate(Quote quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600]
              ),
              ),
            const SizedBox(height: 8),
            Text(
              quote.getAuthorValue(quote),
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800]
              ),
              )
          ],
        ),
      ),
    );
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
