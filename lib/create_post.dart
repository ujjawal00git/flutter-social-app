import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController _postTextController = TextEditingController();
  File? _selectedImage;

  // Function to pick image from device
  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        setState(() {
          _selectedImage = File(image.path);
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  // Function to send post
  void _sendPost() {
    String postText = _postTextController.text;
    File? postImage = _selectedImage;

    // Add logic to send post here
    // For demonstration, print post details
    print('Post Text: $postText');
    print('Post Image Path: ${postImage?.path}');

    // Reset fields after sending post
    _postTextController.clear();
    setState(() {
      _selectedImage = null;
    });

    // Show confirmation message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Post sent successfully!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Post'),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: _sendPost,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _postTextController,
              decoration: InputDecoration(
                hintText: 'Write your post...',
              ),
              maxLines: 3,
            ),
            SizedBox(height: 16),
            _selectedImage != null
                ? Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.file(
                    _selectedImage!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      _selectedImage = null;
                    });
                  },
                ),
              ],
            )
                : Container(),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.photo_library),
                          title: Text('Choose from Gallery'),
                          onTap: () {
                            Navigator.pop(context);
                            _pickImage();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.cancel),
                          title: Text('Cancel'),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Pick Image'),
            ),
          ],
        ),
      ),
    );
  }
}
