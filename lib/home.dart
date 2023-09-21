import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  String dropval = "one";
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropval = "one";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          title: Center(
              child: const Text(
            "dropdown",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          )),
          titleTextStyle: TextStyle(color: Color.fromARGB(255, 255, 248, 248)),
          backgroundColor: Color.fromARGB(255, 73, 133, 82),
        ),
        backgroundColor: Color.fromARGB(255, 210, 229, 245),
        body: Column(
          children: [
            Center(
              child: DropdownButton(
                icon: const Icon(Icons.list),
                items: const [
                  DropdownMenuItem(value: "one", child: Text("one")),
                  DropdownMenuItem(value: "two", child: Text("two")),
                  DropdownMenuItem(value: "three", child: Text("three")),
                  DropdownMenuItem(value: "four", child: Text("four")),
                ],
                value: dropval,
                onChanged: (String? newvalue) {
                  setState(() {
                    dropval = newvalue!;
                  });
                },
              ),
            ),
          ],
        ));
  }
}
