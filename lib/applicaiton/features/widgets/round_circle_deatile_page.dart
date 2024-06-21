import 'package:flutter/material.dart';

class RoundCardDeatilesPage extends StatelessWidget {
  const RoundCardDeatilesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CircleAvatar(), Text("Document")],
    );
  }
}
