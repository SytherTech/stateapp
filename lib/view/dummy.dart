import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateapp/controller/home_controller.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dummy Screen'),
        actions: [
          Consumer<HomeController>(
            builder: (context, value, child) => Text(value.number.toString()),
          )
        ],
      ),
    );
  }
}
