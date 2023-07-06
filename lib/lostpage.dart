import 'package:flutter/material.dart';

import 'main.dart';

class lostpage extends StatelessWidget {
  const lostpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "imgages/image2.png",
            width: 90,
            height: 90,
          ),
          const SizedBox(
            height: 5,
          ),
          const Center(
              child: Text(
                "oops!",
                style: TextStyle(color: Color(0xffD4D4FF),fontSize: 18),
              )),
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
                textAlign: TextAlign.center,
                "Sorry you have \n the lose the",
                style: TextStyle(color: Color(0xffD4D4FF),fontSize: 18),
              )),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
                "${index==9?"":data![index]["prize"]}",
                style: const TextStyle(color: Color(0xffD4D4FF),fontSize: 18),
              )),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const kbc(),));
              index=0;
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white12)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Try again",
                style: TextStyle(color: Color(0xffD6D6D6),fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );;
  }
}
