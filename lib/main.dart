import 'package:flutter/material.dart';
import 'package:store/ui/home_screen/admin/admin_screen.dart';
import 'package:store/ui/home_screen/employee/employee.dart';
import 'package:store/ui/login/login.dart';
import 'package:store/ui/pages/add/add_product.dart';
import 'package:store/ui/pages/store/store.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
              headline4: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true),
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xFFDFECDB),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.transparent, elevation: 0)),
      routes: {
        Login.routeName: (context) => Login(),
        AdminScreen.routeName: (context) => AdminScreen(),
        Employee.routeName: (context) => Employee(),
        Store.routeName: (context) => Store(),
        AddProduct.routeName: (context) => AddProduct(),
      },
      initialRoute: Employee.routeName,
    );
  }
}
