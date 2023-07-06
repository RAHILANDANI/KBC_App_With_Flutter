import 'package:flutter/material.dart';

import 'cong.dart';
import 'listofdata.dart';
import 'main.dart';

class winpage extends StatefulWidget {
  const winpage({super.key});

  @override
  State<winpage> createState() => _winpageState();
}

class _winpageState extends State<winpage> {
  @override
  Widget build(BuildContext context) {
    data = Data().data();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/image1.jpg",
            width: 90,
            height: 90,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
              child: Text(
                index==10?"Congratulations":"Your Answer is Correct",
                style: TextStyle(color: index==9?Color(0xff5B5F62):Color(0xffA67750),fontSize: 18),
              )),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
                index==10?"Game Over":"You Win",
                style: TextStyle(color: index==9?Color(0xffFFFFFF):Color(0xffC78640),fontSize: 18),
              )),
          Center(
              child: Text(
                "${index==10?"":index==9?data![index]["prize"]:data![index]["prize"]}",
                style: TextStyle(color: Color(0xffC78640)),
              )),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              // setState(() {
              if(index<9) {
                print(index);
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => kbc(),));
              }
              if(index==9){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => cong(),));
              }
              index++;
            },
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white12)),
            child: Text(
              index==10?"Restart":"Next",
              style: TextStyle(color: Color(0xffD6D6D6)),
            ),
          )
        ],
      ),
    );
  }
}
