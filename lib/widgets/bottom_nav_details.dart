import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavigationDetails {
  const BottomNavigationDetails(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final Color color;
}

const List<BottomNavigationDetails> allDestinations = <BottomNavigationDetails>[
  BottomNavigationDetails('Order', MdiIcons.shopping, Colors.grey),
  BottomNavigationDetails('Dinning', MdiIcons.shoePrint, Colors.grey),
  BottomNavigationDetails('Nightlife', MdiIcons.glassMug, Colors.grey),
  BottomNavigationDetails('Videos', MdiIcons.youtubeTv, Colors.grey)
];
