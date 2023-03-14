import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateapp/controller/home_controller.dart';
import 'package:stateapp/view/dummy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var home = Provider.of<HomeController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome User'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DummyScreen(),
                    ));
              },
              icon: Icon(Icons.forward))
        ],
      ),
      body: Center(
        child: Text(
          home.number.toString(),
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        home.addnumer();
      }),
    );
  }
}
