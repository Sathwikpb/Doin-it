// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BackgroundPage extends StatelessWidget {
  const BackgroundPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 12, 12, 12),
                ],
                stops: [1],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
