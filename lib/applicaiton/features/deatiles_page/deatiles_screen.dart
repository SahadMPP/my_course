import 'package:application/applicaiton/features/widgets/list_deatiles_page.dart';
import 'package:application/applicaiton/features/widgets/round_circle_deatile_page.dart';
import 'package:flutter/material.dart';

class DeatilesScreen extends StatelessWidget {
  const DeatilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.amberAccent,
            ),
            const Text("Subject Name"),
            const Text("Part - 01 | 1hr 37m"),
            const Text("Topics Covered"),
            const Row(
              children: [
                Chip(
                    label: Row(
                  children: [
                    Icon(Icons.book_rounded),
                    Text("text"),
                  ],
                )),
                Chip(
                    label: Row(
                  children: [
                    Icon(Icons.book_rounded),
                    Text("text"),
                  ],
                )),
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundCardDeatilesPage(),
                RoundCardDeatilesPage(),
                RoundCardDeatilesPage(),
                RoundCardDeatilesPage(),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                return const ListViewBoxCollection();
              },
            )),
          ],
        ),
      ),
    );
  }
}

