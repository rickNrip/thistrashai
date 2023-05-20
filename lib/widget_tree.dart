
import 'package:flutter/material.dart';
import 'package:thistrashai/pages/home.dart';
import 'package:thistrashai/pages/login.dart';
import 'package:thistrashai/auth.dart';

class WidgetTree extends StatefulWidget{
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree>{
  @override
  Widget build(BuildContext context){
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot){
        
        if(snapshot.hasData){
          return MyHomePage(title: 'This Trash Ai');
        }
        else{
          return const LoginPage();
        }
      },
    );
  }
}