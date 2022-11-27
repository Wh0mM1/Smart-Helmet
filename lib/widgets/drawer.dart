import 'package:flutter/material.dart';
import 'package:smart_helmet/widgets/profile_page.dart';

class DrawerBar extends StatefulWidget {
  const DrawerBar({super.key});

  @override
  State<DrawerBar> createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.red,
          ],
        )),
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.red,
                ],
              )),
              child: const SizedBox(
                height: 60,
                child: DrawerHeader(
                  duration: Duration(milliseconds: 5000),
                  curve: Curves.bounceIn,
                  child: Text(
                    'WelCome!',
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.red,
              elevation: 5,
              child: ListTile(
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              ),
            ),
            Card(
              color: Colors.red,
              elevation: 5,
              child: ListTile(
                title: const Text('Last Rides'),
                onTap: () {},
              ),
            ),
            Card(
              color: Colors.red,
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.logout_sharp),
                title: const Text('LogOut'),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
