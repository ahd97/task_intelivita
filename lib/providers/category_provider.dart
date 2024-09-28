import 'package:flutter/foundation.dart';
import '../model/category_item.dart';

class CategoryProvider with ChangeNotifier {
  final List<CategoryItem> _items = [
    CategoryItem(
      title: 'Natural Diamonds',
      imageUrl: 'https://i.ibb.co/HgjT1rt/Image.png',
      options: ['Collection', 'Best Selling', 'Seasonal Offers', 'Occasion Offer', 'Deals'],
      expanded: false,
    ),
    CategoryItem(
      title: 'Lab-grown Diamonds',
      imageUrl: 'https://i.ibb.co/HgjT1rt/Image.png',
      options: ['Collection', 'Best Selling', 'Seasonal Offers', 'Occasion Offer', 'Deals'],
      expanded: false,
    ),
    CategoryItem(
      title: 'Gemstone',
      imageUrl: 'https://i.ibb.co/HgjT1rt/Image.png',
      options: ['Collection', 'Best Selling', 'Seasonal Offers', 'Occasion Offer', 'Deals'],
      expanded: false,
    ),
    CategoryItem(
      title: 'Jewellery',
      imageUrl: 'https://i.ibb.co/HgjT1rt/Image.png',
      options: ['Collection', 'Best Selling', 'Seasonal Offers', 'Occasion Offer', 'Deals'],
      expanded: false,
    ),
    CategoryItem(
      title: 'Do It Yourself',
      imageUrl: 'https://i.ibb.co/HgjT1rt/Image.png',
      options: ['Collection', 'Best Selling', 'Seasonal Offers', 'Occasion Offer', 'Deals'],
      expanded: false,
    ),
    CategoryItem(
      title: 'About Us',
      imageUrl: 'https://i.ibb.co/HgjT1rt/Image.png',
      options: ['Collection', 'Best Selling', 'Seasonal Offers', 'Occasion Offer', 'Deals'],
      hasDropdown: false,
      expanded: false,
    ),
    CategoryItem(
      title: 'Education',
      imageUrl: 'https://i.ibb.co/HgjT1rt/Image.png',
      options: ['Collection', 'Best Selling', 'Seasonal Offers', 'Occasion Offer', 'Deals'],
      expanded: false,
    ),
  ];

  int? _selectedIndex;

  List<CategoryItem> get items => _items;
  int? get selectedIndex => _selectedIndex;

  void selectItem(int? index) {
    if (_selectedIndex == index) {
      _selectedIndex = null;
    } else {
      _selectedIndex = index;
    }
    notifyListeners();
  }

}