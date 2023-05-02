import 'package:codelab3/consts/colors.dart';
import 'package:flutter/material.dart';

import '../widget/landing_search_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.bottomLeft,
          child: const Icon(
            Icons.pool,
            color: mainThemeColor,
            size: 80,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.pexels.com/photos/261394/pexels-photo-261394.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: mainThemeColor.withOpacity(0.7),
            ),
          ),
           AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: whiteColor),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Paradise',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Icon(
                Icons.pool,
                color: whiteColor,
                size: 80,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Choose to location'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Find Hotel',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const LandingSearchBar(),
            ],
          ),
        ],
      ),
    );
  }
}
