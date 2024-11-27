import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/constants/const.dart';
import 'package:mobile/constants/datas.dart';
import 'package:mobile/model/apis.module.dart';

class ModalSheetWidget extends StatefulWidget {
  const ModalSheetWidget({super.key});

  @override
  State<ModalSheetWidget> createState() => _ModalSheetWidgetState();
}

class _ModalSheetWidgetState extends State<ModalSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sh(10),
        Container(
          height: 8,
          width: 50,
          decoration: BoxDecoration(
            color: const Color(0xff5b595e),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        sh(10),
        const SizedBox(
          height: 30,
          child: Text(
            'Create a new scenario',
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: (dh(context) / 1.1) - 58,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: apis.length,
            itemBuilder: (BuildContext context, int index) {
              final api = apis[index];
              return ExpansionTile(
                title: Text(api.name),
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: api.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                children: [
                  sh(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(api.description),
                  ),
                  sh(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Icon(CupertinoIcons.arrow_2_squarepath),
                        sw(5),
                        const Text(
                          'Actions',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  ),
                  sh(10),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: api.actions.length,
                      itemBuilder: (BuildContext context, int index) {
                        final action = api.actions[index];
                        return Row(
                          children: [
                            sw(10),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 1),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    ApiModel(
                                      name: api.name,
                                      imageUrl: api.imageUrl,
                                      description: api.description,
                                      actions: [action],
                                    ),
                                  );
                                },
                                child: Text(
                                  action,
                                  style: const TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  sh(10)
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
