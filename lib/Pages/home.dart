import 'package:flutter/material.dart';
import 'package:thistrashai/Pages/imageShow.dart';
import 'package:thistrashai/auth.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<void> signOut() async{
    await Auth().signOut();
  }

    Widget signOutButton(){
    return ElevatedButton(onPressed: signOut, child: const Text("Sign out"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(widget.title),
        actions: [
          CircleAvatar(
            child: Icon(Icons.person),
          )
        ],
      ),
      body: ListView(
        children: [ImageData()],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.chat_bubble),
            IconButton(onPressed: (() {}), icon: Icon(Icons.leaderboard))
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 700,),
            signOutButton()
          ],
        ),
      ),
    );
  }
}
