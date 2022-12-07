import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);
 class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int newIndex, child) {
      return  BottomNavigationBar(
      currentIndex: newIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: backgroundColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
onTap: (index) {
  indexChangeNotifier.value = index;
  log('${indexChangeNotifier.value}');
},
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home) , label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.collections) , label: 'News & Hot'), 
         BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions) , label: 'Fast & Laugh'),
          BottomNavigationBarItem(icon: Icon(Icons.search) , label: 'Search'),
           BottomNavigationBarItem(icon: Icon(Icons.download_sharp) , label: 'Download'),
      ],
    );
    },);
  }
}