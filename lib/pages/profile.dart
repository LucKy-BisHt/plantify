import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    ProfileInformation(),
    OrderTracking(),
    Settings(),
    AboutUs(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

class ProfileInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Information',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class OrderTracking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Order Tracking',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'About Us',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}



// Scaffold(
// appBar: AppBar(
// title: Text('Profile'),
// ),
// body: Center(
// child: _widgetOptions.elementAt(_selectedIndex),
// ),
// // bottomNavigationBar: BottomNavigationBar(
// //   items: const <BottomNavigationBarItem>[
// //     BottomNavigationBarItem(
// //       icon: Icon(Icons.person),
// //       label: 'Profile',
// //     ),
// //     BottomNavigationBarItem(
// //       icon: Icon(Icons.track_changes),
// //       label: 'Order Tracking',
// //     ),
// //     BottomNavigationBarItem(
// //       icon: Icon(Icons.settings),
// //       label: 'Settings',
// //     ),
// //     BottomNavigationBarItem(
// //       icon: Icon(Icons.info),
// //       label: 'About Us',
// //     ),
// //   ],
// //   currentIndex: _selectedIndex,
// //   onTap: _onItemTapped,
// // ),
// );