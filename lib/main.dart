import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vitalink/core/Vitalink.dart';

void main() {
  runApp(const ProviderScope(child: Vitalink()));
}
