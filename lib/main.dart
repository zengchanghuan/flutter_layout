import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_layout/provider_count_example.dart';
void main() {
  runApp(const MyApp());
}

//第一步 定义需要共享的数据
class CountNotifier with ChangeNotifier {

  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //第二步 在应用程序入口初始化
    return ChangeNotifierProvider(
      create: (_) => CountNotifier(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProviderCountExample(),
      ),
    );
  }
}



