import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:g_shopick_admin/screens/adminlogin/login_screen.dart';
import 'package:g_shopick_admin/screens/categoriess/category_management.dart';

Future<void> main(List<String> args) async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Admin App",
      home: CategoryManagement(),
    );
  }
}
