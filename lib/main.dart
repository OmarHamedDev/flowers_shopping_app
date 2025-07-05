import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'config/di/di.dart';
import 'core/functions/confic_loading.dart';
import 'core/styles/utils/bloc_observer/bloc_observer.dart';
import 'flowers_shopping_app.dart';

void main() async {
  configLoading();
  await configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(const FlowersShoppingApp());
}
