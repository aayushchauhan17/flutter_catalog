import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  margin: EdgeInsets.all(0),
                  accountName: Text("Aayush"),
                  accountEmail: Text("aayushchauhan176@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Home",
              textScaleFactor: 1.1,
            ),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text(
              "Login",
              textScaleFactor: 1.1,
            ),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text(
              "Profile",
              textScaleFactor: 1.1,
            ),
          )
        ],
      ),
    );
  }
}
