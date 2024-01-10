import 'package:flutter/material.dart';
import 'package:sushi/models/food.dart';

class Shop extends ChangeNotifier {
  //food menu
  final List<Food> _foodMenu = [
    Food(
        name: "Salmon Sushi",
        price: "21.00",
        imagePath: "lib/images/sushi2.png",
        rating: "4.9"),
    Food(
        name: "Tuna",
        price: "23.00",
        imagePath: "lib/images/sushi3.png",
        rating: "4.3"),
  ];

  // customers cart
  List<Food> _cart = [];

  //getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
