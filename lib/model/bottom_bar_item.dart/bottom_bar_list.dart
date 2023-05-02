import 'package:flutter/material.dart';

import 'bottom_bar_model.dart';

List<BottomBarModel> barItemsList = [
  BottomBarModel(label: 'Home', isSelected: true, icon: Icons.home),
  BottomBarModel(label: 'Account', isSelected: false, icon: Icons.person),
  BottomBarModel(
      label: 'Bookings', isSelected: false, icon: Icons.pending_actions),
  BottomBarModel(label: 'More', isSelected: false, icon: Icons.more_horiz),
];
