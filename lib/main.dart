//import mayerial and getx
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import google fonts
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial_/counter_controller.dart';

void main() {
  // testwidgetflytter bindings
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.satisfy().fontFamily,
      ),
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  final CounterController _counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 7,
        title: Obx(()=>  Text('GetX Counter  is  ${_counterController.count}')),
      ),
      body: Center(
        // show text in a circular widget with lightpink bankground

        child: Container(
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,

            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(20),
          child: Obx(
            () => Text(
              '${_counterController.count}',
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                _counterController.increment();
              },
              child: const Icon(Icons.add),
            ),

            //a button to reset the counter
            FloatingActionButton(
              onPressed: () {
                _counterController.reset();
              },
              child: const Icon(Icons.loop),
            ),

            FloatingActionButton(
              onPressed: () {
                _counterController.decrement();
              },
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ));
}
