import 'package:coffee_shop_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  
  // coffee for sale list
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Long Black', 
      price: '4.10', 
      imagePath: "assets/imgs/black.png",
    ),

    // late
    Coffee(
      name: 'Late', 
      price: '4.20', 
      imagePath: "assets/imgs/latte.png",
    ),

    // espresso
    Coffee(
      name: 'Espresso', 
      price: '3.50', 
      imagePath: "assets/imgs/espresso.png",
    ),

    // iced coffee
    Coffee(
      name: 'Iced Coffee', 
      price: '4.40', 
      imagePath: "assets/imgs/ice_coffee.png",
    ),
  ];

  // user cart
  List<Coffee> _userCart = []; 

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
 void removeItemToCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }

}