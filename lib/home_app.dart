import 'package:flutter/material.dart';
import 'package:flutter_timeline_tile/components/timeline_app.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Timeline Tile'),
        ),
        body: const Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TimeLineApp(
                isFirst: true,
                isLast: false,
                isVez: false,
                isF: false,
              ),
              TimeLineApp(
                isFirst: false,
                isLast: false,
                isVez: true,
                isF: false,
              ),
              TimeLineApp(
                isFirst: false,
                isLast: true,
                isVez: false,
                isF: true,
              ),
            ],
          ),
        ));
  }
}
