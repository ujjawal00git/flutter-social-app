import 'package:flutter/material.dart';

import 'Pedit.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage(),));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/download.jpeg'), // Replace with your profile picture
            ),
            SizedBox(height: 16),
            Text(
              'Kajal Uikey',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Electrical Engineering',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Bio:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'I am an electrical engineer with an abnormal passion for software development. '
                  'I love playing around with new technologies, '
                  'especially when tinkering on hardware or solving interesting math problems.'
                  ' We always struggle to complete the best circuit called life with lots of happiness.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'Chhindwara, M.P ,India',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.link, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'uikeyKajal1106@gmail.com.com',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
