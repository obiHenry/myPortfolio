import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PortfolioController extends GetxController {
  // String for changing the Store Name
  final storeName = 'Thick Shake'.obs;
// int for increasing the Follower count
  final followerCount = 0.obs;
// bool for showing the status of the Store open or close

// text editing controllers

  final reviewNameController = TextEditingController();

  updateStoreName(String name) {
    storeName(name);
  }

  updateFollowerCount() {
    followerCount(followerCount.value + 1);
  }
}
