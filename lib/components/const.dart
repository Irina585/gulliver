import 'package:flutter/material.dart';

/// Константы для запросов
class Query {
  //static const String baseUrl = 'https://jsonplaceholder.typicode.com/photos';
  //static const String baseUrl = 'http://192.168.1.100:3000/promotions';
  static const String baseUrl = 'https://reqres.in/api/users?page=2';
  static const String pisecImageUrl = 'https://a.d-cd.net/KiAAAgCig-A-960.jpg';
}

const borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(color: Colors.grey, width: 1));

//шрифты
const mainTextStyle_15 = TextStyle(fontSize: 15, fontWeight: FontWeight.normal);

const mainTextStyle_17 = TextStyle(fontSize: 17, fontWeight: FontWeight.normal);

const forwardTextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

const balanceTextStyle = TextStyle(
  fontSize: 18,
);

const headerTextStyle =
    TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white);

//цвета
const mainColors = Colors.red;
const mainBlackColors = Colors.black;
const subColors = Colors.grey;
