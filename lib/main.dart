import 'package:crypto_wallet_ui/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        centerTitle: false,
        backgroundColor: UiColors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Merhaba Bilal",
                  style: TextStyle(color: UiColors.pink, fontSize: 24),
                ),
                Text(
                  "Hoş geldin",
                  style: TextStyle(color: UiColors.black, fontSize: 32),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: UiColors.lightGrey,
                  borderRadius: BorderRadius.circular(5)),
              child: Image.asset("assets/icon_notifications.png"),
            ),
          ],
        ),
      ),
      body: Container(
        color: UiColors.white,
        child: Column(
          children: [
            Container(
              color: UiColors.white,
              height: 250,
              margin: const EdgeInsets.all(5),
              child: Stack(
                children: [
                  Positioned(
                      top: 20,
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(250, 18),
                            topRight: Radius.elliptical(250, 18),
                            bottomLeft: Radius.elliptical(250, 20),
                            bottomRight: Radius.elliptical(250, 20),
                          ),
                          gradient: LinearGradient(colors: [UiColors.darkBlue, UiColors.lightGrey],)
                        ),
                        child: const Stack(
                          children: [
                            Positioned(
                              top: 20,
                              left: 20,
                              child: Text("bugün % 2.75", style: TextStyle(color: UiColors.white, fontSize: 16),)),
            
                            Positioned(
                              top: 40,
                              left: 20,
                              child: Text("33,524.08 ₺", style: TextStyle(color: UiColors.white, fontSize: 36, fontWeight: FontWeight.bold),))  
                          ],
                        ),
                      )),
            
                      Positioned(
                        bottom: 20,
                        right: 6,
                        child: Image.asset("assets/coin_stack.png")),
            
                        Positioned(
                        bottom: 12,
                        left: 30,
                        child: FloatingActionButton(
                          shape: const CircleBorder(),
                          onPressed: (){},
                          backgroundColor: UiColors.pink,
                          child: const Icon(Icons.add),
                          ))
                ],
              ),
            ),
            Text("actions")
          ],
        ),
      ),
    );
  }
}
