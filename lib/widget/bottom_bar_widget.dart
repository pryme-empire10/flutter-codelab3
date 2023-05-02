import 'package:codelab3/consts/colors.dart';
import 'package:flutter/material.dart';

import '../model/bottom_bar_item.dart/bottom_bar_list.dart';
import '../model/bottom_bar_item.dart/bottom_bar_model.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  List<BottomBarModel> barItems = barItemsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(barItems.length, (index) {
          var barItem = barItems[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                for(var element in barItems){
                  element.isSelected = barItem == element;
                }
              });
            },
            child: Column(
              children: [
                Icon(
                  barItem.icon,
                  color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                ),
                Text(
                  barItem.label!,
                  style: TextStyle(
                    color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                    fontSize: 11,
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
