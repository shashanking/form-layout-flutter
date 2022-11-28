import 'package:flutter/material.dart';
import 'package:test_layout/src/ui/components/app_bar.dart';
import 'package:test_layout/src/ui/components/bottom_navbar.dart';
import 'package:test_layout/src/ui/home/home_body.dart';
import 'package:test_layout/src/ui/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: MyAppBar(),
          preferredSize: Size.fromHeight(100.0),
        ),
        body: HomeBody(),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
