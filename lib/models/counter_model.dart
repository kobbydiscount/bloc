import 'package:flutter/foundation.dart';

class CounterModel extends ChangeNotifier {
  int count = 0;

  void increment() {
    this.count++;
    notifyListeners();
  }

  void decrement() {
    if (this.count > 0) {
      this.count--;
      notifyListeners();
    }
  }

  void reset() {
    this.count = 0;
    notifyListeners();
  }
}
