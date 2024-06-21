import 'package:application/applicaiton/features/widgets/bottom_card_home.dart';
import 'package:application/applicaiton/features/widgets/home_last_card.dart';
import 'package:application/applicaiton/features/widgets/middle_card_home.dart';
import 'package:application/functions/funtion.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DataBaseFunction baseFunction = DataBaseFunction();
    baseFunction.getCourses();
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 150),
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 188, 93, 243),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            padding: const EdgeInsets.all(15),
            height: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi Good Morning !",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.white),),
                        Text("John",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white)),
                      ],
                    ),
                    Spacer(),
                    Chip(label: Text("10")),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8)),
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("selected Course",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.grey),),
                          Text("Montessori",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 188, 93, 243))),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text("Change",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.white),),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.upcoming,size: 20,)
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TopCardInHome(),
                TopCardInHome(),
                TopCardInHome(),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Course",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                TextButton(onPressed: () {}, child: const Text('See All',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.blue),)),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
                height: 260,
                child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => const MiddleCircleHome(),
                )),
            const SizedBox(height: 30),
            Container(
              height: 150,
              margin: const EdgeInsets.all(18),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color.fromARGB(255, 255, 196, 190),
              ),
              child: Stack(
                children: [
                  const Text("Practice With Previous Year Question Papers"),
                  Container(
                    color: Colors.amber,
                    height: 100,
                    width: 50,
                  ),
                  const CircleAvatar(),
                ],
              ),
            ),
            const Text("Latest Text Series",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black)),
            const SizedBox(height: 20),

            SizedBox(
              height:150 ,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: BottomCardHome(),
                  );
                },
                itemCount: 5,
              ),
            ),
            const SizedBox(height: 40),

          ],
        ),
      ),
    );
  }
}





