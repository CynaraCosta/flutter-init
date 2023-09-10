import 'package:flutter/material.dart';

abstract class Button {
  Widget build();
}

class AnotherButton implements Button {
  @override
  Widget build() {
    throw UnimplementedError();
  }
}
