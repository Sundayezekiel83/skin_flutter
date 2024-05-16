import 'package:flutter_riverpod/flutter_riverpod.dart';

int defaultCategory = 0;

class SelectCategoryNotifier extends StateNotifier<int> {
  SelectCategoryNotifier() : super(defaultCategory);
  void setSelectCategory(int value) {
    state = value;
  }
}

final selectCategoryProvider = StateNotifierProvider(
  (ref) => SelectCategoryNotifier(),
);
