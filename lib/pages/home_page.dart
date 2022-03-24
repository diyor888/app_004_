import 'package:app_004/pages/info_page.dart';
import 'package:app_004/pages/sidebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[400],
        title: const Text(
          "Telegram",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, InfoPage.id);
              },
              icon: const Icon(
                Icons.info_outline,
                size: 30,
              ))
        ],
      ),
      drawer: const Sidebar(),
      body: const Center(
        child: Image(
          image: AssetImage("assets/images/img.jpg"),
        ),
      ),
    );
  }
}
