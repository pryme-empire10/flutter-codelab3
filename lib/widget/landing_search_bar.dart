import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../screens/list_page.dart';

class LandingSearchBar extends StatelessWidget {
  const LandingSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search Hotel',
            suffixIcon: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ListPage(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 2),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: mainThemeColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.search,
                    color: whiteColor,
                    size: 25,
                  ),
                ),
              ),
            ),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
