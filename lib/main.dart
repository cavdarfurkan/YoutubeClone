import 'package:flutter/material.dart';

void main() => runApp(const MainPage());

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'YouTube',
      home: Scaffold(
        body: CustomAppBar(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          // expandedHeight: 100,
          backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Image.asset('assets/yt_logo.png'),
          ),
          leadingWidth: 95,
          actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.cast),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: IconButton(
                onPressed: () {},
                icon: ClipOval(
                  child: Image.asset('assets/avatar.jpg'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}