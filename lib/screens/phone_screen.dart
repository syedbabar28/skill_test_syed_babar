import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:skill_test_syed_babar/components/end_call_button.dart';
import 'package:skill_test_syed_babar/components/back_button.dart';
import 'package:skill_test_syed_babar/components/mute_call_button.dart';
import 'package:skill_test_syed_babar/components/rows/row_connected_chat.dart';
import 'package:skill_test_syed_babar/controller/PhoneController.dart';
import '../components/caption_button.dart';

class PhoneScreen extends StatelessWidget {
  PhoneScreen({super.key});

  MediaQueryData? _mediaQuery;
  final _controller = Get.put(PhoneController());

  @override
  Widget build(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [_topBar(), _connectedChatList(), _bottomSection()],
        ),
      ),
    );
  }

  Widget _topBar() {
    return Container(
        height: (_mediaQuery?.size.height ?? 20) * 0.1,
        decoration: const BoxDecoration(color: Colors.blue),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyBackButton(onBackPressed: () {
                    SystemNavigator.pop();
                  }),
                  CaptionButton(
                    isCaptionEnabled: _controller.isCaptionEnabled,
                    onCaptionPressed: () {
                      _controller.isCaptionEnabled.value =
                          !_controller.isCaptionEnabled.value;
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget _connectedChatList() {
    return Flexible(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: [Colors.white, Colors.white.withOpacity(0.05)],
            stops: const [0.9, 1],
            tileMode: TileMode.mirror,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(bounds);
        },
        child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 20),
            itemCount: _controller.connectedPeoplesList.length,
            itemBuilder: (ctx, index) {
              final data = _controller.connectedPeoplesList[index];
              return RowConnectedChat(
                connectedChatModel: data,
                isCaptionEnabled: _controller.isCaptionEnabled,
              );
            }),
      ),
    );
  }

  Widget _bottomSection() {
    return Container(
      height: (_mediaQuery?.size.height ?? 50) * 0.2,
      decoration: const BoxDecoration(color: Colors.blue),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "...Joe",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " is Speaking",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MuteCallButton(
                      isMuted: _controller.isCallMuted,
                      margin: const EdgeInsets.only(right: 15),
                      onMuteCallPressed: () {
                        _controller.isCallMuted.value =
                            !_controller.isCallMuted.value;
                      }),
                  EndCallButton(
                    onCallEndPressed: () {
                      SystemNavigator.pop();
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
