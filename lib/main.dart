import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:implementation_dependency_injection/services/service_locator.dart';
import 'package:implementation_dependency_injection/view/home.dart';

import 'bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Dependency Injection App",
      home: Home(),
    );
  }
}
