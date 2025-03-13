import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/color-counter.dart';
import '../widgets/color-tap.dart';
// import 'provider/provider.dart';
 
class ColorTapsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Taps')),
      body: Consumer<ColorCounters>(
        builder: (context, colorCounters, child) {
          return Column(
            children: [
              ColorTap(
                type: CardType.red,
                tapCount: colorCounters.redTapCount,
                onTap: colorCounters.incrementRedTap,
              ),
              ColorTap(
                type: CardType.blue,
                tapCount: colorCounters.blueTapCount,
                onTap: colorCounters.incrementBlueTap,
              ),
            ],
           );
         },
       ),
     );
   }
 }