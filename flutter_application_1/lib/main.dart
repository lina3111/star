import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        
        appBar: AppBar(
          title: const Text('Example App'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.blueAccent,
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Hello World!'),
                      SizedBox(height: 20, width: 200),
                      Text('Additional Text'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
             bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Mail',
          ),
        ],
       // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
      //  onTap: _onItemTapped,
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
             print(123);
          },
          backgroundColor: Colors.white,
          child: const CircleAvatar(
            radius: 50,
            
        ),
      ),
    ));
  }
}