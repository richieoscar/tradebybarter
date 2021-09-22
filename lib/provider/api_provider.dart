import 'package:flutter/material.dart';
import 'package:trade_by_barter/models/item.dart';
import 'package:trade_by_barter/networking/api_networking.dart';

class ApiProvider extends ChangeNotifier {
  ApiProvider() {
    getItems();
  }

  List<Item> _tradeItems = [];
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  List<Item> get tradeItems => _tradeItems;

  void getItems() async {
    _isLoading = true;
    notifyListeners();
    _tradeItems = await ApiNetworkingManager.getAllItems();
    _isLoading = false;
    notifyListeners();
  }
}
