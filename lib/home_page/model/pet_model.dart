import 'package:flutter/material.dart';

class PetModel{

  String? petImage;
  String? petName;
  String? petColor;
  String? petAge;
  String? petCategory;
  String? petOrigin;
  String? petDescription;

  PetModel({this.petImage, this.petName, this.petColor, this.petAge, this.petCategory, this.petOrigin, this.petDescription});

 static List<PetModel> dogDataList = [
    PetModel(petImage: 'assets/images/dog1.jpg',petAge: "5", petName: 'Tommy', petColor: 'Yellow', petCategory: 'Dog', petOrigin: 'Bangladesh', petDescription: 'Dogs are domesticated descendants of the wolf. They are mammals with sharp teeth, an excellent sense of smell, and a fine sense of hearing. Dogs have large teeth, can run fast, jump, walk on their toes, and have strong muscles.'),
    PetModel(petImage: 'assets/images/dog2.jpeg', petAge: "3", petName: 'Daisy', petColor: 'Pink', petCategory: 'Dog', petOrigin: 'Nepal', petDescription: 'Dogs are domesticated descendants of the wolf. They are mammals with sharp teeth, an excellent sense of smell, and a fine sense of hearing. Dogs have large teeth, can run fast, jump, walk on their toes, and have strong muscles.'),
    PetModel(petImage: 'assets/images/dog3.jpg', petAge: "4", petName: 'Luna', petColor: 'Coffee', petCategory: 'Dog', petOrigin: 'China', petDescription: 'Dogs are domesticated descendants of the wolf. They are mammals with sharp teeth, an excellent sense of smell, and a fine sense of hearing. Dogs have large teeth, can run fast, jump, walk on their toes, and have strong muscles.'),
    PetModel(petImage: 'assets/images/dog4.jpeg', petAge: "2", petName: 'Rose', petColor: 'Red', petCategory: 'Dog', petOrigin: 'Bhutan', petDescription: 'Dogs are domesticated descendants of the wolf. They are mammals with sharp teeth, an excellent sense of smell, and a fine sense of hearing. Dogs have large teeth, can run fast, jump, walk on their toes, and have strong muscles.'),
    PetModel(petImage: 'assets/images/dog5.jpeg', petAge: "7", petName: 'Prome', petColor: 'Purple', petCategory: 'Dog', petOrigin: 'Thailand', petDescription: 'Dogs are domesticated descendants of the wolf. They are mammals with sharp teeth, an excellent sense of smell, and a fine sense of hearing. Dogs have large teeth, can run fast, jump, walk on their toes, and have strong muscles.')
  ];

  static List<PetModel> catDataList = [
    PetModel(petImage: 'assets/images/cat1.jpg',petAge: "25", petName: 'Fazle Rabbi', petColor: 'Yellow', petCategory: 'Cat', petOrigin: 'Pakistan', petDescription: 'The cat (Felis catus), also referred to as domestic cat or house cat, is a small domesticated carnivorous mammal. It is the only domesticated species of the family Felidae. Advances in archaeology and genetics have shown that the domestication of the cat occurred'),
    PetModel(petImage: 'assets/images/cat2.jpeg', petAge: "26", petName: 'Nahid', petColor: 'Pink', petCategory: 'Cat', petOrigin: 'Srilanka', petDescription: 'The cat (Felis catus), also referred to as domestic cat or house cat, is a small domesticated carnivorous mammal. It is the only domesticated species of the family Felidae. Advances in archaeology and genetics have shown that the domestication of the cat occurred'),
    PetModel(petImage: 'assets/images/cat3.jpg', petAge: "27", petName: 'Fahad', petColor: 'Coffee', petCategory: 'Cat', petOrigin: 'Myanmar', petDescription: 'The cat (Felis catus), also referred to as domestic cat or house cat, is a small domesticated carnivorous mammal. It is the only domesticated species of the family Felidae. Advances in archaeology and genetics have shown that the domestication of the cat occurred'),
    PetModel(petImage: 'assets/images/cat4.jpeg', petAge: "28", petName: 'Nadim', petColor: 'Red', petCategory: 'Cat', petOrigin: 'Tiwan', petDescription: 'The cat (Felis catus), also referred to as domestic cat or house cat, is a small domesticated carnivorous mammal. It is the only domesticated species of the family Felidae. Advances in archaeology and genetics have shown that the domestication of the cat occurred'),
    PetModel(petImage: 'assets/images/cat5.jpeg', petAge: "29", petName: 'Rahul', petColor: 'Purple', petCategory: 'Cat', petOrigin: 'Japan', petDescription: 'The cat (Felis catus), also referred to as domestic cat or house cat, is a small domesticated carnivorous mammal. It is the only domesticated species of the family Felidae. Advances in archaeology and genetics have shown that the domestication of the cat occurred')
  ];

  static List<PetModel> birdDataList = [
    PetModel(petImage: 'assets/images/bird1.jpeg',petAge: "29", petName: 'Alamin', petColor: 'Yellow', petCategory: 'Bird', petOrigin: 'Iran', petDescription: 'Birds are a group of warm-blooded vertebrates constituting the class Aves , characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton.'),
    PetModel(petImage: 'assets/images/bird2.jpeg', petAge: "28", petName: 'Tabir', petColor: 'Pink', petCategory: 'Bird', petOrigin: 'Qatar', petDescription: 'Birds are a group of warm-blooded vertebrates constituting the class Aves , characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton.'),
    PetModel(petImage: 'assets/images/bird3.jpg', petAge: "27", petName: 'Abir', petColor: 'Coffee', petCategory: 'Bird', petOrigin: 'Kuet', petDescription: 'Birds are a group of warm-blooded vertebrates constituting the class Aves , characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton.'),
    PetModel(petImage: 'assets/images/bird4.jpeg', petAge: "26", petName: 'Aktarul', petColor: 'Red', petCategory: 'Bird', petOrigin: 'Irq', petDescription: 'Birds are a group of warm-blooded vertebrates constituting the class Aves , characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton.'),
    PetModel(petImage: 'assets/images/bird5.jpg', petAge: "25", petName: 'Heron', petColor: 'Purple', petCategory: 'Bird', petOrigin: 'Sriaya', petDescription: 'Birds are a group of warm-blooded vertebrates constituting the class Aves , characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton.')
  ];

  static List<PetModel> snakeDataList = [
    PetModel(petImage: 'assets/images/snake1.jpeg',petAge: "25", petName: 'Tamim', petColor: 'Yellow', petCategory: 'Snake', petOrigin: 'Greece', petDescription: 'These creatures have long bodies, tapered tails, and no legs. Though some species do have rough scales, in the vast majority the scales carefully overlap one another. This means their skin in smooth when you rub in the direction of the scales'),
    PetModel(petImage: 'assets/images/snake2.jpeg', petAge: "26", petName: 'Babul', petColor: 'Pink',  petCategory: 'Snake', petOrigin: 'Denmark', petDescription: 'These creatures have long bodies, tapered tails, and no legs. Though some species do have rough scales, in the vast majority the scales carefully overlap one another. This means their skin in smooth when you rub in the direction of the scales'),
    PetModel(petImage: 'assets/images/snake3.jpg', petAge: "27", petName: 'Shaklain', petColor: 'Coffee',  petCategory: 'Snake', petOrigin: 'Ghana', petDescription: 'These creatures have long bodies, tapered tails, and no legs. Though some species do have rough scales, in the vast majority the scales carefully overlap one another. This means their skin in smooth when you rub in the direction of the scales'),
    PetModel(petImage: 'assets/images/snake4.jpg', petAge: "28", petName: 'Masud', petColor: 'Red',  petCategory: 'Snake', petOrigin: 'Mexico', petDescription: 'These creatures have long bodies, tapered tails, and no legs. Though some species do have rough scales, in the vast majority the scales carefully overlap one another. This means their skin in smooth when you rub in the direction of the scales'),
    PetModel(petImage: 'assets/images/snake5.jpg', petAge: "29", petName: 'Anik', petColor: 'Purple',  petCategory: 'Snake', petOrigin: 'Italy', petDescription: 'These creatures have long bodies, tapered tails, and no legs. Though some species do have rough scales, in the vast majority the scales carefully overlap one another. This means their skin in smooth when you rub in the direction of the scales')
  ];
}