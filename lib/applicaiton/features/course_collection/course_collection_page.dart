import 'package:application/applicaiton/features/widgets/list_deatiles_page.dart';
import 'package:flutter/material.dart';

class CourseCollectionScreen extends StatelessWidget {
  const CourseCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 150),
          child: AppBar(
            centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 194, 51, 250),
            title: const Text("Course Name"),

          )),
          body: Column(
            children: [
              const SizedBox(height: 40),

              Container(
                margin: const EdgeInsets.only(left: 10,right: 10),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.red[100]),
                child: Row(
                  children: [
                    const Text("Upgrade and unlock the full course"),
                    ElevatedButton(onPressed: (){}, child: const Text("Upgrade"))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 10,right: 10),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.green[100]),
                child: Column(
                  children: [
                    const Text('whatsApp'),
                    Row(
                      children: [
                        const Text("Upgrade and unlock the full course"),
                        ElevatedButton(onPressed: (){}, child: const Row(
                          children: [
                            Icon(Icons.whatshot,size: 10,),
                            Text("What"),
                          ],
                        ))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return const ListViewBoxCollection();
                },itemCount: 10,),
              )
              
            ],
          ),
    );
  }
}

