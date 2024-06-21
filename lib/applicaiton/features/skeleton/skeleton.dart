import 'package:application/applicaiton/features/course_collection/course_collection_page.dart';
import 'package:application/applicaiton/features/deatiles_page/deatiles_screen.dart';
import 'package:application/applicaiton/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  State<Skeleton> createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {

  List<Widget> list = [
    const HomeScreen(),
    const DeatilesScreen(),
    const CourseCollectionScreen()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.grey[200],
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            }, icon: const Icon(Icons.home)),
            IconButton(onPressed: () {
              setState(() {
                selectedIndex = 1;
              });
            }, icon: const Icon(Icons.details_outlined)),
            IconButton(onPressed: () {
              setState(() {
                selectedIndex = 2;
              });
            }, icon: const Icon(Icons.collections_bookmark)),
          ],
        ),
      ),
      body:list[selectedIndex] ,
    );
  }
}
