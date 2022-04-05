import 'package:flutter_mvc/src/model/model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class Controller extends ControllerMVC {
  factory Controller() {
    _this ??= Controller._();
    return _this!;
  }

  static Controller? _this;

  Controller._();

  int get counter => Model.counter;

  void incrementCounter() {
    Model.incrementCounter();
  }

  void decrementCounter() {
    Model.decrementCounter();
  }
}
