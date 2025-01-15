import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_test_syed_babar/model/ConnectedChatModel.dart';

class RowConnectedChat extends StatelessWidget {
  RowConnectedChat(
      {super.key,
      required this.connectedChatModel,
      required this.isCaptionEnabled});

  final ConnectedChatModel connectedChatModel;
  RxBool isCaptionEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                      connectedChatModel.imageUrl,
                    ))),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    connectedChatModel.userName,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Obx(() {
                return Expanded(
                    child: isCaptionEnabled.value
                        ? Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: Text(
                              connectedChatModel.caption,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          )
                        : Container());
              }),
              Obx(() {
                return connectedChatModel.isSpeaking.value
                    ? const Icon(
                        Icons.volume_up_rounded,
                        color: Colors.white,
                        size: 25,
                      )
                    : Container();
              })
            ],
          )
        ],
      ),
    );
  }
}
