// ignore: file_names
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('accountName'),
            accountEmail: const Text('accountEmail'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.green[50],
                child: Icon(
                  Icons.person,
                  color: Colors.blueGrey[200],
                ),
              ),
            ),
          ),
          InkWell(
              onTap: () {},
              child: ListTile(
                title: const Text("Home"),
                leading: Icon(
                  Icons.home,
                  color: Colors.blueGrey[200],
                ),
              )),
          InkWell(
              onTap: () {},
              child: ListTile(
                title: const Text("Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.blueGrey[200],
                ),
              )),
          InkWell(
              onTap: () {},
              child: ListTile(
                title: const Text("Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.blueGrey[200],
                ),
              )),
          InkWell(
              onTap: () {},
              child: ListTile(
                title: const Text("Categories"),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.blueGrey[200],
                ),
              )),
          InkWell(
              onTap: () {},
              child: ListTile(
                title: const Text("Favorites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.blueGrey[200],
                ),
              )),
          InkWell(
              onTap: () {},
              child: ListTile(
                title: const Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blueGrey[200],
                ),
              )),
          InkWell(
              onTap: () {},
              child: ListTile(
                title: const Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blueGrey[200],
                ),
              ))
        ],
      ),
    );
  }
}
