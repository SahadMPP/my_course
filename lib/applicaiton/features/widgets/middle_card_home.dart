import 'package:flutter/material.dart';

class MiddleCircleHome extends StatelessWidget {
  const MiddleCircleHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 40,
        ),
        SizedBox(height: 5),
        Text("Text",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
      ],
    );
  }
}