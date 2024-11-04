import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle.light, //* improvise this line as needed
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, 0.3),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, 0.3),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -0.75),
                child: Container(
                  width: 350,
                  height: 350,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 100, sigmaY: 100, tileMode: TileMode.clamp),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
              //*________________________________________Background____________________________________________

              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "📍 Sujo Humzo, Gilgit Baltistan",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Good Morning",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    Image.asset('assets/1.png'),
                    const Center(
                      child: Text(
                        '23 °C',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Thunderstrom',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Thursday, 12:43 am',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //?_____________________________ Rows _______________________
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            //add a thin border
                            border: Border.all(color: Colors.white.withOpacity(0.65), width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/11.png',
                                scale: 8,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sunrise',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text(
                                    '5:24 am',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            //add a thin border
                            border: Border.all(color: Colors.white.withOpacity(0.65), width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/12.png',
                                scale: 8,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sunset',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text(
                                    '6:04 pm',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Divider(
                        color: Colors.white.withOpacity(0.55),
                      ),
                    ), //?____________ Rows 2___________
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            //add a thin border
                            border: Border.all(color: Colors.white.withOpacity(0.65), width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/13.png',
                                scale: 8,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Temp Max',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text(
                                    '27 °C',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white.withOpacity(0.65), width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/14.png',
                                scale: 8,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Temp Min',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text(
                                    '19 °C',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
