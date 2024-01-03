import 'package:flutter/material.dart';

class ContainerProvider extends ChangeNotifier{
bool resize = true;

void resizeController(){
  resize =!resize;
  notifyListeners();
}
}