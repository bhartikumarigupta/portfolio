import 'package:flutter/material.dart';
import 'package:portfolio/view/homepage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'MY Portfolio',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const HomePage(),
        home: HomePageWithLoading(),
      );
    });
  }
}

class HomePageWithLoading extends StatefulWidget {
  @override
  _HomePageWithLoadingState createState() => _HomePageWithLoadingState();
}

class _HomePageWithLoadingState extends State<HomePageWithLoading> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Add your initialization logic here
    // For example, fetching data from an API
    _simulateLoading();
  }

  void _simulateLoading() {
    Future.delayed(Duration(seconds: 10), () {
      // Simulate loading completion
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : HomePage(); // If not loading anymore, show the actual home page
  }
}
