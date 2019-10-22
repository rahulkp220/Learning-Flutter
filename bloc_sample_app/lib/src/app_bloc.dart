import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/subjects.dart';

class AppBloc extends BlocBase {

  int counter = 0;
  final _counterController = BehaviorSubject.seeded(0);
  Stream get outCounter => _counterController.stream;
  Sink get inCounter => _counterController.sink;

  void increment() {
    counter++;
    inCounter.add(_counterController.value + 1);
  }

  void decrement() {
    counter--;
    inCounter.add(_counterController.value - 1);
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
    _counterController.close();
  }
}
