import 'package:flutter/material.dart';

class SendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Implement your send button functionality here
          },
          child: Text('Send'),
        ),
      ),
    );
  }
}
