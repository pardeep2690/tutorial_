//import material package
import 'package:flutter/material.dart';

//import getx package
import 'package:get/get.dart';


class CounterController extends GetxController {
  var _count = 0.obs ;
  get count => _count.value;
  increment() => _count.value++;
  decrement() => _count.value--;
  reset() => _count.value = 0;
}