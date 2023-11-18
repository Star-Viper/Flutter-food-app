import 'package:flutter/material.dart';
class Mainpage extends StatefulWidget {
const Mainpage({super.key});
@override
State<Mainpage> createState() => _MainpageState();
}
class _MainpageState extends State<Mainpage> {
@override
Widget build(BuildContext context) {
return Scaffold(
body: Container(
child: Padding(
padding: const EdgeInsets.fromLTRB(20, 45, 20, 0),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Text(
"Hello, Shivam!",
style: TextStyle(
fontSize: 25,
color: Colors.black,
fontWeight: FontWeight.bold,
),
),
Container(
padding: const EdgeInsets.all(10),
decoration: const BoxDecoration(
color: Colors.black,
shape: BoxShape.circle,
),
child: const Icon(
Icons.person,
size: 20,
color: Colors.red,
),
),
],
),
),
),
);
}
}
