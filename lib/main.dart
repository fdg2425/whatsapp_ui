import 'package:flutter/material.dart';

import 'settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.transparent, // Remove the overlay effect
      appBar: AppBar(
        backgroundColor: Colors.white,
        //foregroundColor: Colors.green,
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.green),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.local_see_outlined,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              )),
          const EndDrawerButton()
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0), // Height of the divider
          // child: Container(
          //   color: Colors.grey.shade300, // Color of the separator
          //   height: 0.5, // Thickness
          // ),
          child: Divider(height: 1, thickness: 1, color: Colors.grey),
        ),
      ),
      endDrawer: Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: const EdgeInsets.only(top: 80, right: 4),
          height: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: Colors.grey, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 8,
                spreadRadius: 2,
                offset: const Offset(4, 4), // Shadow position
              ),
            ],
          ),
          child: Drawer(
            backgroundColor: Colors.transparent,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: const Text('New group'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  title: const Text('New broadcast'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  title: const Text('Linked devices'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  title: const Text('Starred messages'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  //leading: const Icon(Icons.settings),
                  title: const Text("Settings"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       if (_selectedIndex == 0)
      //         const Text(
      //           'Home page',
      //         ),
      //       if (_selectedIndex == 1)
      //         const Text(
      //           'Search page',
      //         ),
      //       if (_selectedIndex == 2)
      //         const Text(
      //           'Profile page',
      //         ),
      //       Text(
      //         '$_selectedIndex',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ),
      // ),
      body: _widgetOptions[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Active tab index
        onTap: _onItemTapped, // Change tab when clicked
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue, // Active tab color
        unselectedItemColor: Colors.grey, // Inactive tab color
        showUnselectedLabels: true, // Show labels for all items
      ),
    );
  }
}
