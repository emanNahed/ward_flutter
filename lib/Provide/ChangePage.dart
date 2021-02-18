
import 'package:flutter/cupertino.dart';

class ChangePage with ChangeNotifier{
  int _index;

  ChangePage(this._index);

  getIndex() => _index;

  void moveToPage(int page){
    _index = page;
    notifyListeners();
  }

}