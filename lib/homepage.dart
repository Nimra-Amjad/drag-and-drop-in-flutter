import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double left=0.0;
   double top=0.0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text("Draggable Widget"),
        ),
        body: Stack(
          children: [
            Positioned(
              left: left,
              top: top,
              child: GestureDetector(
                onTap: (){},
                onPanUpdate: (details){
                  
                  setState(() {
                    left=max(0, left+details.delta.dx);
                  top=max(0, top+details.delta.dy);
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), color: Colors.red),
                ),
              ),
            )
          ],
        ));
  }
}
