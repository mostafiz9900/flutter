
import 'package:flutter/cupertino.dart';

class IncrementData extends ChangeNotifier{
  int _count=0;
  int getRemainingCount() => _count;

  updateData()
  {
    _count++;
    notifyListeners();
  }
}