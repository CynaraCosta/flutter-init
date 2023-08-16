import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

class QuoteCard extends StatelessWidget {
  
  final Quote quote;
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
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
}
