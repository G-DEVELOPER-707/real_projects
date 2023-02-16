import 'dart:async';


import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  bool _isVisible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(milliseconds: 500),
      () {
        setState(
          () {
            _isVisible = false;
          },
        );
      },
    );
    openPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        opacity: _isVisible ? 1 : 0,
        duration: const Duration(milliseconds: 3000),
        child: Center(
          child: Column(
            children: [
              SizedBox(height:(MediaQuery.of(context).size.height)/2,),

              const Text(
                "DEVELOPER_707",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyanAccent,),
              )
            ],
          ),
        ),
      ),
    );
  }

  void openPage() {
    Timer(const Duration(milliseconds: 4000), () {
      setState(() {
        _isVisible = false;
      });
      Navigator.pushReplacementNamed(context, "/MainView");
    });
  }
}
