import 'package:flutter/material.dart';

class LikePage1 extends StatelessWidget {
  final bool isLiked;
  final Function(bool) onLikePressed;

  LikePage1({required this.isLiked, required this.onLikePressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Like'),
      ),
      body: Center(
        child: IconButton(
          icon: isLiked ? Icon(Icons.favorite, color: Colors.red) : Icon(Icons.favorite_border),
          onPressed: () {
            onLikePressed(!isLiked);
          },
        ),
      ),
    );
  }
}
