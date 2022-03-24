import 'package:app_004/pages/home_page.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  static const String id = "info";

  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(
          child: const Center(
            child: Text(
              "Murotov Diyorbek",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            HomePage.id,
          );
        },
        child: Icon(Icons.home,size: 30,),
      ),
    );
  }
}
