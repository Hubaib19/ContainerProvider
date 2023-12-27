import 'package:flutter/material.dart';

class ContainerProvider extends ChangeNotifier{
bool resize = false;

void resizeController(){
  resize =!resize;
  notifyListeners();
}
}