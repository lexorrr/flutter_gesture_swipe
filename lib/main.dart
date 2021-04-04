import 'package:flutter/material.dart';
import 'package:flutter_gesture_swipe/providers/swipelist_provider.dart';
import 'package:flutter_gesture_swipe/widgets/swipe_items.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SourceList>(
      create: (_) => SourceList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe to dismiss example'),
      ),
      body: Center(
        child: const SwipeItems(),
      ),
    );
  }
}

