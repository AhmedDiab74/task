import 'package:flutter/material.dart';
import 'package:task/models/views/home_page_view.dart';

void main() {
  runApp(const Task());
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: const HomePageView(),
      ),
    );
  }
}
