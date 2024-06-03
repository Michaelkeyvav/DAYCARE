import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/register.dart';
import 'pages/input_dataanak.dart';
import 'pages/input_kegiatananak.dart';
import 'pages/menu.dart'; 
import 'pages/Kegiatan.dart'; // Impor halaman kegiatan anak

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  
  @override
  Widget build(BuildContext context) {
    var kegiatanList;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(onLogin: () {
          Navigator.pushReplacementNamed(context, '/menu');
        }),
        '/register': (context) => RegisterPage(),
        '/input_pengasuh' : (context) => input_kegiatananak(),  
        '/menu': (context) => MenuPage(), 
        '/input_orangtua' : (context) => input_dataanak(),
       '/kegiatan_anak': (context) => Kegiatan(kegiatanList: kegiatanList),
      },
    );
  }
}
