import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_guide/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Demo',
      theme: ThemeData(useMaterial3: true),
      home: const MyHomePage(title: 'Getx Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, this.title});
  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var name = "jamal";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Home  page ${widget.title}"),
              Text("Your  name is $name"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () => {
                    setState(() {
                      name = "mehdi";
                    }),
                    print(name),
                    Get.to(LoginPage())
                  },
                  child: const Text("Go To Login Page"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
