import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDrawerOpen = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: isDrawerOpen
                  ? const Icon(Icons.close)
                  : const Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  isDrawerOpen = !isDrawerOpen;
                });
                if (isDrawerOpen) {
                  Scaffold.of(context).openDrawer();
                } else {
                  Navigator.pop(context);
                }
              },
            );
          },
        ),
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Kisaki\'s',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'Recipes',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(88, 143, 143, 1.0),
        actions: [
          // Add the search icon here
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add functionality for search icon
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 80,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(88, 143, 143, 1.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: isDrawerOpen
                        ? const Icon(Icons.close, color: Colors.black)
                        : const Icon(Icons.menu, color: Colors.black),
                    onPressed: () {
                      setState(() {
                        isDrawerOpen = !isDrawerOpen;
                      });
                      if (!isDrawerOpen) {
                        Navigator.pop(context);
                      }
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 20),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Kisaki\'s',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'Recipes',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 5), // Adjust the padding
              title: const Text(
                'Breakfast',
                style: TextStyle(
                  fontSize: 18, //s Adjust the font size
                  color: Colors.black, // Adjust the text color
                ),
              ),

              onTap: () {
                // Add functionality for menu item 1
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 5), // Adjust the padding
              title: const Text(
                'Lunch',
                style: TextStyle(
                  fontSize: 18, //s Adjust the font size
                  color: Colors.black, // Adjust the text color
                ),
              ),
              onTap: () {
                // Add functionality for menu item 2
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 5), // Adjust the padding
              title: const Text(
                'Dinner',
                style: TextStyle(
                  fontSize: 18, //s Adjust the font size
                  color: Colors.black, // Adjust the text color
                ),
              ),
              onTap: () {
                // Add functionality for menu item 1
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 5), // Adjust the padding
              title: const Text(
                'Dessert',
                style: TextStyle(
                  fontSize: 18, //s Adjust the font size
                  color: Colors.black, // Adjust the text color
                ),
              ),
              onTap: () {
                // Add functionality for menu item 2
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 5), // Adjust the padding
              title: const Text(
                'Healthy',
                style: TextStyle(
                  fontSize: 18, //s Adjust the font size
                  color: Colors.black, // Adjust the text color
                ),
              ),
              onTap: () {
                // Add functionality for menu item 1
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 5), // Adjust the padding
              title: const Text(
                'Quick & Easy',
                style: TextStyle(
                  fontSize: 18, //s Adjust the font size
                  color: Colors.black, // Adjust the text color
                ),
              ),
              onTap: () {
                // Add functionality for menu item 2
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 5), // Adjust the padding
              title: const Text(
                'Meat',
                style: TextStyle(
                  fontSize: 18, //s Adjust the font size
                  color: Colors.black, // Adjust the text color
                ),
              ),
              onTap: () {
                // Add functionality for menu item 1
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 5), // Adjust the padding
              title: const Text(
                'Contact',
                style: TextStyle(
                  fontSize: 18, //s Adjust the font size
                  color: Colors.black, // Adjust the text color
                ),
              ),
              onTap: () {
                // Add functionality for menu item 2
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 5), // Adjust the padding
              title: const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 18, //s Adjust the font size
                  color: Colors.black, // Adjust the text color
                ),
              ),
              onTap: () {
                // Add functionality for menu item 1
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: const Text(
                'Kisaki\'s Recipes',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the button here
              },
              child: const Text('Press me'),
            ),
          ],
        ),
      ),
      // Add the BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(88, 143, 143, 1.0),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            label: 'Meals',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          // Update the selected index when a button is tapped
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
