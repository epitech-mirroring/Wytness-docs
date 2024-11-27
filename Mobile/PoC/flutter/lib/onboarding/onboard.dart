import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile/constants/const.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoardPage> {
  double pageOffset = 0;
  int current = 0;
  bool isToolAvailable = true;

  Widget dot(int dot) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          color: current == dot ? Colors.white : const Color(0xff5b595e),
          height: 7,
          width: 7,
        ),
      ),
    );
  }

  List<Map<String, dynamic>> onboardList(BuildContext context) {
    return [
      {
        'image': 'gradient.png',
        'description': 'Automate easily tasks',
      },
      {
        'image': 'gradient.png',
        'description': 'Create personnalized scenarios.',
      },
      {
        'image': 'gradient.png',
        'description': 'Gain time everydays.',
      },
    ];
  }

  Widget connection() {
    return Column(
      children: [
        sh(20),
        Center(
          child: FadeInUp(
            child: const Text(
              'Connect with us',
              style: TextStyle(
                fontFamily: 'Arial',
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        sh(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              child: FadeInUp(
                child: FadeInRight(
                  child: Container(
                    height: 70,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {},
                child: FadeInUp(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 96, 96, 96),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: const TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w300,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              // Navigator.push(
                              //   context,
                              //   CupertinoPageRoute(
                              //     builder: (context) => GraphViewScreen(),
                              //   ),
                              // );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: 3,
            options: CarouselOptions(
              scrollDirection: Axis.horizontal,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              enlargeCenterPage: false,
              aspectRatio: dw(context) / dh(context),
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              },
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              final model = onboardList(context)[realIndex];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: dh(context) / 2.5,
                    width: dw(context) / 1.2,
                    child: FadeIn(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/onboard/${model["image"]}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  sh(50),
                  realIndex == 2
                      ? connection()
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            model['description'],
                            style: const TextStyle(
                              fontFamily: 'arial',
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                  sh(30),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 100,
                  height: 27,
                  color: const Color.fromARGB(255, 190, 188, 193),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      sw(10),
                      dot(0),
                      sw(10),
                      dot(1),
                      sw(10),
                      dot(2),
                      sw(10),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
