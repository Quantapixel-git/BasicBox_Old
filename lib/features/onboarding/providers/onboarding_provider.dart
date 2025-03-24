import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  int _currentIndex = 0;
  final _pageController = PageController();
  final _data = [
    {
      "title": "Choose Products",
      "description":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
      "image": "assets/images/splash/chose_product.png"
    },
    {
      "title": "Make Payment",
      "description":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
      "image": "assets/images/splash/make_payment.png"
    },
    {
      "title": "Get Your Order",
      "description":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
      "image": "assets/images/splash/your_order.png"
    },
  ];

  int get currentIndex => _currentIndex;
  PageController get pageController => _pageController;
  List get data => _data;

  void goNext() {
    if (_currentIndex < 2) {
      _currentIndex++;
      pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
      notifyListeners();
    }
  }

  void goPrev() {
    if (_currentIndex > 0) {
      _currentIndex--;
      pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
      notifyListeners();
    }
  }
}
