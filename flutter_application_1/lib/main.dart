import 'package:flutter/material.dart';
import 'main2.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(MyApp(navigatorKey: navigatorKey));
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const MyApp({super.key, required this.navigatorKey});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://avatars.mds.yandex.net/i?id=9a1371e95061139e11d978fdf22cec83_l-3548851-images-thumbs&n=13', 
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              const Text('Hello World!'),
              const SizedBox(height: 20),
              const Text('Additional Text'),
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
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          if (index == 1) {
            } else if (index == 2) {
            Navigator.pushNamed(context, '/second'); 
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
