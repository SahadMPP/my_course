import 'package:flutter/material.dart';

class BottomCardHome extends StatelessWidget {
  const BottomCardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 192, 56, 255),
      ),
      child: Column(
        children: [
          const Text("Exam 102 - Biology",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.white)),
          const Text("10 Questions 120mins",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.white)),
          ElevatedButton(onPressed: () {}, child: const Text("Attempt Now"))
        ],
      ),
    );
  }
}