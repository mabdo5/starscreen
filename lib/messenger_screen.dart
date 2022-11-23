import 'package:flutter/material.dart';

class messenger extends StatefulWidget {
  const messenger({super.key});

  @override
  State<messenger> createState() => _messengerState();
}

class _messengerState extends State<messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("data")],
      ),
    );
  }
}
