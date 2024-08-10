import 'package:crypto_wallet_ui/action_section.dart';
import 'package:crypto_wallet_ui/amount_card.dart';
import 'package:crypto_wallet_ui/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AmountCard(),
            const ActionSection(),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const Text("Top Movers", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: UiColors.black),),
              Container(
                height: 90,
                width: 150,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: UiColors.lightGrey
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("% 27.18", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: UiColors.black),),
                    const Text("% BTC 2.043 ₺", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: UiColors.black),),
                  ],
                )
              )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
