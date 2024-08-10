import 'package:crypto_wallet_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class AmountCard extends StatelessWidget {
  const AmountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          gradient: LinearGradient(colors: [UiColors.darkBlue, UiColors.darkPurple],)
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
                          backgroundColor: UiColors.darkPink,
                          child: Image.asset("assets/plus_icon.png"),
                          ))
                ],
              ),
            );
  }
}