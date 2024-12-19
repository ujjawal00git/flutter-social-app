import 'package:flutter/material.dart';
import 'package:socialapp/userpageprofile.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> filteredResults = [];
  List<Map<String, String>> searchSuggestions = [];

  @override
  void initState() {
    super.initState();
    filteredResults = searchResults;
  }

  void filterSearchResults(String query) {
    List<Map<String, String>> dummySearchList = [];
    dummySearchList.addAll(searchResults);
    if (query.isNotEmpty) {
      List<Map<String, String>> dummyListData = [];
      searchSuggestions.clear();
      dummySearchList.forEach((item) {
        if (item['username']!.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        filteredResults.clear();
        filteredResults.addAll(dummyListData);
      });

      // Generate search suggestions
      searchSuggestions.addAll(searchResults.where((item) =>
          item['username']!.toLowerCase().startsWith(query.toLowerCase())));
    } else {
      setState(() {
        filteredResults.clear();
        filteredResults.addAll(searchResults);
        searchSuggestions.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          controller: _searchController,
          onChanged: (value) {
            filterSearchResults(value);
          },
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search, color: Colors.grey),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search suggestions
          _buildSearchSuggestions(),
          // Search results
          Expanded(
            child: ListView.builder(
              itemCount: filteredResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        filteredResults[index]['avatarUrl']!),
                  ),
                  title: Text(filteredResults[index]['username']!),
                  subtitle: Text(filteredResults[index]['name']!),
                  onTap: () {
                    // Navigate to the user's profile page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserProfilePage(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchSuggestions() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Searches ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: searchSuggestions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(searchSuggestions[index]['username']!),
                onTap: () {
                  _searchController.text =
                  searchSuggestions[index]['username']!;
                  filterSearchResults(_searchController.text);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

// Dummy search results data (replace it with actual data)
List<Map<String, String>> searchResults = [
  {
    'username': 'Janki_Yadav412',
    'name': 'Janki Yadav',
    'avatarUrl': 'assets/dp/images (1).jpeg',
  },
  {
    'username': 'Urmila_Pal',
    'name': 'Urmila Pal',
    'avatarUrl': "assets/dp/portrait-indian-woman-sari-standing-260nw-2010501434.webp",
  },
  {
    'username': 'Sulochana_Mishraji',
    'name': 'Sulochana Mishra',
    'avatarUrl': "assets/dp/images.jpeg",
  },
  {
    'username': 'Rajkumar_465',
    'name': ' Rajkumar Waghmare',
    'avatarUrl': "assets/dp/images (2).jpeg",
  },
  {
    'username': 'munni_734',
    'name': 'Manju Deheriya',
    'avatarUrl': "assets/dp/images (3).jpeg",
  },
  {
    'username': 'sunita__01',
    'name': 'Sunita Borikar',
    'avatarUrl': "assets/dp/images (7).jpeg",
  },
  {
    'username': 'Uma_bai',
    'name': 'Uma Bai Shiv',
    'avatarUrl': "assets/dp/images (13).jpeg",
  },

  // Add more search results as needed
];
