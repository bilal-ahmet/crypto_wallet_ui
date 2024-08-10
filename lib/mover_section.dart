import 'package:crypto_wallet_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class MoverSection extends StatelessWidget {
  const MoverSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Top Movers",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: UiColors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                  height: 100,
                  width: 170,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: UiColors.lightGrey),
                  child: Stack(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "+ 27.18",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: UiColors.black),
                          ),
                          Text(
                            "% BTC 2.043 ₺",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: UiColors.black),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset("assets/purple_graph.png"),
                      )
                    ],
                  )),
              const SizedBox(
                width: 20,
              ),
              Container(
                  height: 100,
                  width: 170,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: UiColors.lightGrey),
                  child: Stack(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "+ 27.18",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: UiColors.black),
                          ),
                          Text(
                            "% BTC 2.043 ₺",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: UiColors.black),
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset("assets/pink_graph.png"))
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
