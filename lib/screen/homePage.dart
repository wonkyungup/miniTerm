import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<homePage> createState() => mainPageState();
}

class mainPageState extends State<homePage> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0.0
      ),
      extendBodyBehindAppBar: true,
      body: const Center(
        // child: appList.elementAt(selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
            switch (index) {
              case 0:
                print("Menu");
                break;
              case 1:
                print("View");
                break;
              case 2:
                print("Search");
                break;
              case 3:
                print("Settings");
                break;
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu)
          ),
          BottomNavigationBarItem(
            label: 'View',
            icon: Icon(Icons.view_carousel)
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search)
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings)
          )
        ]
      )
    );
  }
}
