import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zenza/app.dart';
import 'package:zenza/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';
import 'package:zenza/screens/home/models/cart_model.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MyApp(FirebaseUserRepo()),
    ),
  );
}
