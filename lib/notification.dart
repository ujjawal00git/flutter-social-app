import 'package:flutter/material.dart';

class NotficationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Implement your send button functionality here
          },
          child: Text(''),
        ),
      ),
    );
  }
}
