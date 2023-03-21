import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin : EdgeInsets.zero,
                accountName: Text("Vishal Maurya"),
                accountEmail: Text("Vishamaurya9049@gmail.com"),
              )
          )
        ],
      ),
    );
  }
}
