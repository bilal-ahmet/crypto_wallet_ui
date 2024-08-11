import 'package:crypto_wallet_ui/action_section.dart';
import 'package:crypto_wallet_ui/amount_card.dart';
import 'package:crypto_wallet_ui/constants/constants.dart';
import 'package:crypto_wallet_ui/mover_section.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  int currentPageIndex = 0;
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();

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
            const SingleChildScrollView(
              child: Column(
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [AmountCard(), ActionSection(), MoverSection()],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        key: bottomNavigationKey,
        backgroundColor: UiColors.white,
        color: UiColors.darkPurple,
        buttonBackgroundColor: UiColors.darkPurple,
        index: currentPageIndex,
        letIndexChange: (value) => true,
        onTap: (value) {
          currentPageIndex = value;
        },
        items: [
          Image.asset("assets/Home.png"),
          Image.asset("assets/wallet.png"),
          Container(child: const Text("s")),
          Image.asset("assets/market.png"),
          Image.asset("assets/setting.png"),
        ]
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            final CurvedNavigationBarState? navBarState = bottomNavigationKey.currentState;
            navBarState?.setPage(2);
          },
          backgroundColor: UiColors.mediumPurple,
          shape: const CircleBorder(),
          child: Image.asset("assets/swap-fill.png"),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
