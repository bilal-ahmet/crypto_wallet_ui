import 'package:crypto_wallet_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class ActionSection extends StatefulWidget {
  const ActionSection({super.key});

  @override
  State<ActionSection> createState() => _ActionSectionState();
}

class _ActionSectionState extends State<ActionSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Actions",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: UiColors.black),
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 180,
                padding: const EdgeInsets.all(5),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  children: [
                    Positioned(
                        top: 30,
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: UiColors.pink,
                              borderRadius: BorderRadius.circular(40)),
                        )),
                    Positioned(
                        bottom: 20,
                        right: 0,
                        left: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Receive",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: UiColors.white),
                            ),
                            Image.asset("assets/arrow_icon.png")
                          ],
                        )),
                    Positioned(
                      right: 0,
                      top: 5,
                      child: Image.asset("assets/hands.png"),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 180,
                padding: const EdgeInsets.all(5),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  children: [
                    Positioned(
                        top: 30,
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: UiColors.mediumPurple,
                              borderRadius: BorderRadius.circular(40)),
                        )),
                    Positioned(
                        bottom: 20,
                        right: 0,
                        left: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Send",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: UiColors.white),
                            ),
                            Image.asset("assets/arrow_icon.png")
                          ],
                        )),
                    Positioned(
                      right: 0,
                      top: 5,
                      child: Image.asset("assets/pocket.png"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
