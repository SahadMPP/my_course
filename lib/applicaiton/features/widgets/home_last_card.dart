import 'package:flutter/material.dart';

class TopCardInHome extends StatelessWidget {
  const TopCardInHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.amber,
      ),
      child: const Column(
        children: [
          Icon(
            Icons.airplane_ticket,
            size: 30,
          ),
          Text("Practice",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Colors.white),)
        ],
      ),
    );
  }
}
