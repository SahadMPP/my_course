import 'package:flutter/material.dart';

class ListViewBoxCollection extends StatelessWidget {
  const ListViewBoxCollection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 2,color: Colors.grey[300]!)
      ),
      child: Row(
        
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.grey,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Day 3 - Lesson 1"),
              Text("All About DID"),
              
            ],
          ),
          const Spacer(),
          const CircularProgressIndicator(
            color: Colors.blue,
            backgroundColor: Colors.grey,
            value: .5,
          )
        ],
      ),
      
    );
  }
}
