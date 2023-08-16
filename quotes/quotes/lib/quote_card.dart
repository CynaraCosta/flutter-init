
import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

class QuoteCard extends StatelessWidget {
  
  final Quote quote;
  final List quotes;
  
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  QuoteCard({required this.quote, required this.quotes});

  void delete() {
    quotes.remove(quote);
    print(quotes);
  }

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
              ),
              const SizedBox(height: 8.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: delete,
                    icon: const Icon(Icons.delete),
                  ),
                  const Text(
                    'delete quote',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              )
               
          ],
        ),
      ),
    );
  }
}
