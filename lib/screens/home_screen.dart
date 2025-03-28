import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      'title': 'Suspicious Activity Downtown',
      'views': '5K',
      'time': '2 hours ago',
    },
    {
      'title': 'Armed Robbery Footage',
      'views': '12K',
      'time': '1 day ago',
    },
    {
      'title': 'Car Theft Caught on Camera',
      'views': '8K',
      'time': '5 hours ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crime App'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return ListTile(
            leading: Image.network(video['thumbnail']!),
            title: Text(
              video['title']!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('${video['views']} views • ${video['time']}'),
            onTap: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(Icons.add_a_photo),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv), label: 'Live'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
        ],
      ),
    );
  }
}
