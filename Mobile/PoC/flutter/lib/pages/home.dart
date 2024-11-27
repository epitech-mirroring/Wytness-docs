import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';
import 'package:mobile/constants/const.dart';
import 'package:mobile/model/apis.module.dart';
import 'package:mobile/pages/widget/modal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  final ShakeRotateConstant1 shakeConstant = ShakeRotateConstant1();
  List<bool> isRemove = [];
  List<ApiModel> selectedApi = [];

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    animation = Tween<double>(begin: 1, end: 0).animate(animationController);
    isRemove = List.generate(selectedApi.length + 1, (index) => false);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: selectedApi.isEmpty
          ? null
          : FloatingActionButton(
              onPressed: () {
                if (animationController.isCompleted) {
                  animationController.reverse();
                } else {
                  animationController.forward();
                }
                setState(() {
                  isPlaying = !isPlaying;
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.pause_play,
                progress: animation,
              ),
            ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('AREA'),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        flexibleSpace: Stack(
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            isRemove = List.generate(selectedApi.length + 1, (index) => false);
          });
        },
        child: Container(
          width: dw(context),
          height: dh(context),
          margin: const EdgeInsets.only(top: 20),
          child: ListView.builder(
            itemCount: selectedApi.length + 1,
            itemBuilder: (context, index) {
              if (index == selectedApi.length) {
                if ((isPlaying && selectedApi.isNotEmpty)) {
                  return const SizedBox();
                }
                return SizedBox(
                  height: selectedApi.isEmpty ? dh(context) / 2 : null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 80,
                            width: 130,
                            child: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (context) => ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    child: SizedBox(
                                      height: dh(context) / 1.1,
                                      child: const ModalSheetWidget(),
                                    ),
                                  ),
                                ).then((value) {
                                  if (value != null) {
                                    setState(() {
                                      isRemove.add(false);
                                      selectedApi.add(value);
                                    });
                                  }
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (selectedApi.isEmpty)
                        Column(
                          children: [
                            sh(20),
                            const Text(
                              'Add your first API',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sw(50),
                    Column(
                      children: [
                        GestureDetector(
                          onLongPress: () {
                            setState(() {
                              isRemove[index] = true;
                            });
                          },
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) => ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                child: SizedBox(
                                  height: dh(context) / 1.1,
                                  child: const ModalSheetWidget(),
                                ),
                              ),
                            ).then((value) {
                              if (value != null) {
                                setState(() {
                                  selectedApi[index] = value;
                                });
                              }
                            });
                          },
                          child: ShakeWidget(
                            duration: const Duration(seconds: 3),
                            shakeConstant: shakeConstant,
                            autoPlay: isRemove[index],
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 90,
                                  width: 200,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          sw(10),
                                          SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    selectedApi[index].imageUrl,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          sw(8),
                                          Text(
                                            selectedApi[index].name,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ],
                                      ),
                                      sh(10),
                                      Text(
                                        selectedApi[index].actions.first,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if ((selectedApi.last != selectedApi[index])) ...[
                          Container(
                            height: 30,
                            width: 1,
                            color: Colors.black,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          )
                        ] else ...[
                          if (!isPlaying) ...[
                            Container(
                              height: 30,
                              width: 1,
                              color: Colors.black,
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            )
                          ] else ...[
                            Container(
                              height: 40,
                            )
                          ]
                        ]
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 90,
                      margin: const EdgeInsets.only(bottom: 30),
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: isRemove[index] == false ? 0 : 1,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isRemove.removeAt(index);
                              selectedApi.removeAt(index);
                            });
                          },
                          icon: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              CupertinoIcons.trash,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
