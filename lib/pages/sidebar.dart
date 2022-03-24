import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  static const String id = 'sidebar';

  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://psychospace.ru/wp-content/uploads/2021/03/veselyj-chelovek.jpg",
                  fit: BoxFit.cover,
                  height: 80,
                  width: 80,
                ),
              ),
            ),
            accountName: const Text("Disobey Murotov"),
            accountEmail: const Text("+998 919228235"),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/originals/74/ea/43/74ea430c21e28201c09cd21716065865.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.group_sharp,
            ),
            title: const Text("New Group"),
            onTap: () => print('new group'),
          ),
          ListTile(
            leading: const Icon(
              Icons.lock,
            ),
            title: const Text("New Secret Chat"),
            onTap: () => print("new secret chat"),
          ),
          ListTile(
            leading: const Icon(
              Icons.call,
            ),
            title: const Text("New Channel"),
            onTap: () => print('new channel'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text("Contacts"),
            onTap: () => print("contacts"),
            trailing: Container(
              height: 20,
              width: 50,
              child: Center(
                child: Text("5 online"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.folder_open),
            title: Text("Folders"),
            onTap: () => print("folders"),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text("People Nearby"),
            onTap: () => print('people nearby'),
          ),
          ListTile(
            leading: Icon(Icons.event_note),
            title: Text("Saved Messages"),
            onTap: () => print("saved messages"),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Calls"),
            onTap: () => print('calls'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () => print('settings'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.add_circle),
            title: Text("Plus Settings"),
            onTap: () => print("plus settings"),
          ),
          ListTile(
            leading: Icon(Icons.folder_sharp),
            title: Text("Categories"),
            onTap: () => print("categories"),
          ),
          ListTile(
            leading: Icon(Icons.color_lens_outlined),
            title: Text("Download themes"),
            onTap: () => print("download themes"),
          ),
          ListTile(
            leading: Icon(Icons.brush),
            title: Text("Theming"),
            onTap: () => print("Theming"),
          ),
          ListTile(
            leading: Icon(Icons.campaign),
            title: Text("Official channel"),
            onTap: () => print("Official channel"),
          ),
        ],
      ),
    );
  }
}
