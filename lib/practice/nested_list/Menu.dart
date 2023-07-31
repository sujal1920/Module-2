import 'package:flutter/material.dart';

class Menu{
  String title;
  var productList = <Item>[];
  Menu({required this.title,required this.productList});
}

class Item{
  String item;
  String image;

  Item({required this.item, required this.image});
}

