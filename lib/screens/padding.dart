import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchField extends StatefulWidget {
  @override
  _MySearchFieldState createState() => _MySearchFieldState();
}

class _MySearchFieldState extends State<MySearchField> {
  late String textTitle;
  late Future<List<Recipe>> _futureRecipes;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            onFieldSubmitted: (value) {
              setState(() {
                textTitle = value;
                // _futureRecipes = (String value) {}(value);
              });
            },
            cursorColor: Colors.black,
            controller: _controller,
            style: GoogleFonts.montserrat(color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 18,
              ),
              border: InputBorder.none,
              suffixIcon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class Recipe {
// }