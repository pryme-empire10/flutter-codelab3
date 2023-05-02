import 'package:codelab3/model/attraction_model/attraction_model.dart';
import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../model/attraction_model/attraction_list.dart';
import '../widget/attraction_card.dart';
import '../widget/bottom_bar_widget.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: whiteColor),
        title: const Center(
          child: Icon(
            Icons.pool,
            color: whiteColor,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(
              Icons.notifications,
              color: whiteColor,
            ),
          )
        ],
      ),
      backgroundColor: mainThemeColor,
      body: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50),),
        child: Container(
          decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: attractionList.length,
                  itemBuilder: (context, index) {
                    AttractionModel attr = attractionList[index];
                    return AttractionCard(attraction: attr,);
                  },
                ),
              ),
              const BottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
