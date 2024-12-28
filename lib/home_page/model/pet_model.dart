import 'package:flutter/material.dart';

class PetModel{

  String? petImage;
  String? petName;
  String? petColor;
  String? petAge;

  PetModel({this.petImage, this.petName, this.petColor, this.petAge});

 static List<PetModel> dogDataList = [
    PetModel(petImage: 'assets/images/dog1.jpg',petAge: "5", petName: 'Tommy', petColor: 'Yellow'),
    PetModel(petImage: 'assets/images/dog2.jpeg', petAge: "3", petName: 'Daisy', petColor: 'Pink'),
    PetModel(petImage: 'assets/images/dog3.jpg', petAge: "4", petName: 'Luna', petColor: 'Coffee'),
    PetModel(petImage: 'assets/images/dog4.jpeg', petAge: "2", petName: 'Rose', petColor: 'Red'),
    PetModel(petImage: 'assets/images/dog5.jpeg', petAge: "7", petName: 'Prome', petColor: 'Purple')
  ];

  static List<PetModel> catDataList = [
    PetModel(petImage: 'assets/images/cat1.jpg',petAge: "25", petName: 'Fazle Rabbi', petColor: 'Yellow'),
    PetModel(petImage: 'assets/images/cat2.jpeg', petAge: "26", petName: 'Nahid', petColor: 'Pink'),
    PetModel(petImage: 'assets/images/cat3.jpg', petAge: "27", petName: 'Fahad', petColor: 'Coffee'),
    PetModel(petImage: 'assets/images/cat4.jpeg', petAge: "28", petName: 'Nadim', petColor: 'Red'),
    PetModel(petImage: 'assets/images/cat5.jpeg', petAge: "29", petName: 'Rahul', petColor: 'Purple')
  ];

  static List<PetModel> birdDataList = [
    PetModel(petImage: 'assets/images/bird1.jpeg',petAge: "29", petName: 'Alamin', petColor: 'Yellow'),
    PetModel(petImage: 'assets/images/bird2.jpeg', petAge: "28", petName: 'Tabir', petColor: 'Pink'),
    PetModel(petImage: 'assets/images/bird3.jpg', petAge: "27", petName: 'Abir', petColor: 'Coffee'),
    PetModel(petImage: 'assets/images/bird4.jpeg', petAge: "26", petName: 'Aktarul', petColor: 'Red'),
    PetModel(petImage: 'assets/images/bird5.jpg', petAge: "25", petName: 'Heron', petColor: 'Purple')
  ];

  static List<PetModel> snakeDataList = [
    PetModel(petImage: 'assets/images/snake1.jpeg',petAge: "25", petName: 'Tamim', petColor: 'Yellow'),
    PetModel(petImage: 'assets/images/snake2.jpeg', petAge: "26", petName: 'Babul', petColor: 'Pink'),
    PetModel(petImage: 'assets/images/snake3.jpg', petAge: "27", petName: 'Shaklain', petColor: 'Coffee'),
    PetModel(petImage: 'assets/images/snake4.jpg', petAge: "28", petName: 'Masud', petColor: 'Red'),
    PetModel(petImage: 'assets/images/snake5.jpg', petAge: "29", petName: 'Anik', petColor: 'Purple')
  ];
}