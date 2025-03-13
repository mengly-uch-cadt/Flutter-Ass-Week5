import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/color-counter.dart';
import 'screens/color-tap-screen.dart';
import 'screens/statistic-screen.dart';
 
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorCounters(), 
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Home()), 
      ),
    ),
  );
 }
 
 class Home extends StatefulWidget {
   const Home({super.key});
 
   @override
   State<Home> createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   int _currentIndex = 0;
 
   @override
   Widget build(BuildContext context) {
     print("Home rebuilt");
     return Scaffold(
       body: _currentIndex == 0 ? ColorTapsScreen() : StatisticsScreen(), 
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,
         onTap: (index) {
           setState(() {
             _currentIndex = index;
           });
         },
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.tap_and_play),
             label: 'Taps',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.bar_chart),
             label: 'Statistics',
           ),
         ],
       ),
     );
   }
 }