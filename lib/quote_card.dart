import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  var delete;
  QuoteCard({required this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 13,
                color: Colors.lightBlueAccent[900],
              ),
            ),
            SizedBox(height: 7.0),
            FlatButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete_rounded),
              label: Text('Delete quote'),
            )
          ],
        ),
      ),
    );
  }
}
