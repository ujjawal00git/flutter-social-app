import 'package:flutter/material.dart';
import 'package:socialapp/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Simulate loading state
  bool _isLoading = true;

  // Simulate refreshing state
  bool _isRefreshing = false;

  @override
  void initState() {
    super.initState();
    // Simulate initial loading delay
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  // Method to simulate refreshing
  Future<void> _refreshHomePage() async {
    setState(() {
      _isRefreshing = true;
    });

    // Simulate refreshing delay
    await Future.delayed(Duration(seconds: 5));

    setState(() {
      _isRefreshing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: InstagramHomePage(),
      );
  }
}
