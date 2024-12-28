import 'package:get/get.dart';

class HomePageController extends GetxController{

  int petValue = 0;

  void setPetValue(int value){
    petValue = value;
    update();
  }

}