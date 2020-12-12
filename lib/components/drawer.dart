import 'package:flutter/material.dart';
import 'package:my_crud/utils/config.dart';

class CustomDrawer extends StatelessWidget {
  _menuItem({text, icon, function, color}) {
    return InkWell(
      onTap: function,
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(color: color),
        ),
        leading: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          // header
          new UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text(Config.PLACEHOLDER_USER),
            accountEmail: Text(Config.PLACEHOLDER_EMAIL),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
            decoration: new BoxDecoration(color: Colors.red),
          ),
          // body
          _menuItem(text: 'Home', icon: Icons.home, function: () {}),
          _menuItem(text: 'My Account', icon: Icons.person, function: () {}),
          _menuItem(
              text: 'My Orders', icon: Icons.shopping_basket, function: () {}),
          _menuItem(text: 'Categories', icon: Icons.dashboard, function: () {}),
          _menuItem(text: 'Favourites', icon: Icons.favorite, function: () {}),
          Divider(),
          _menuItem(
              text: 'Settings',
              icon: Icons.settings,
              function: () {},
              color: Colors.blue),
          _menuItem(
              text: 'About',
              icon: Icons.help,
              function: () {},
              color: Colors.green),
        ],
      ),
    );
  }
}
