import 'package:flutter/material.dart';
import 'package:kbc/winpage.dart';
import 'listofdata.dart';
import 'lostpage.dart';

void main() {
  runApp(const kbcc());
}

class kbcc extends StatelessWidget {
  const kbcc({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: kbc(),
    );
  }
}

class kbc extends StatefulWidget {
  const kbc({super.key});

  @override
  State<kbc> createState() => _kbcState();
}

List<Map<String, dynamic>>? data;
int index = 0;

class _kbcState extends State<kbc> {
  Widget build(BuildContext context) {
    data = Data().data();
    List ans = data![index==10?index=0:index]["wrong_ans"];
    ans.shuffle();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Container(
                  width: double.infinity,
                  color: data![index==10?index=0:index]["color"],
                  child: Center(
                      child: Text(
                        "${data![index==10?index=0:index]["question"]}",
                        textAlign: TextAlign.center,
                        style:
                        const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                )),
            Expanded(
                child: Container(
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                if (ans[0] == data?[index==10?index=0:index]["correct_ans"]) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const winpage(),
                                      ));
                                } else {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const lostpage(),
                                      ));
                                }
                              },
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: const Color(0xff1E1F23),
                                    borderRadius: BorderRadius.circular(10)),
                                width: 40,
                                height: 50,
                                child: Center(
                                    child: Text(
                                      "${ans[0]}",
                                      style: const TextStyle(color: Color(0xffA8A8A9)),
                                    )),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                if (ans[1] == data?[index==10?index=0:index]["correct_ans"]) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const winpage(),
                                      ));
                                } else {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const lostpage(),
                                      ));
                                }
                              },
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: const Color(0xff1E1F23),
                                    borderRadius: BorderRadius.circular(10)),
                                width: 40,
                                height: 50,
                                child: Center(
                                    child: Text(
                                      "${ans[1]}",
                                      style: const TextStyle(color: Color(0xffA8A8A9)),
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                if (ans[2] == data?[index==10?index=0:index]["correct_ans"]) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const winpage(),
                                      ));
                                } else {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const lostpage(),
                                      ));
                                }
                              },
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: const Color(0xff1E1F23),
                                    borderRadius: BorderRadius.circular(10)),
                                width: 40,
                                height: 50,
                                child: Center(
                                    child: Text(
                                      "${ans[2]}",
                                      style: const TextStyle(color: Color(0xffA8A8A9)),
                                    )),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                if (ans[3] == data?[index==10?index=0:index]["correct_ans"]) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const winpage(),
                                      ));
                                } else {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const lostpage(),
                                      ));
                                }
                              },
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: const Color(0xff1E1F23),
                                    borderRadius: BorderRadius.circular(10)),
                                width: 40,
                                height: 50,
                                child: Center(
                                    child: Text(
                                      "${ans[3]}",
                                      style: const TextStyle(color: Color(0xffA8A8A9)),
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
