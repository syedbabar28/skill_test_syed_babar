import 'package:get/get.dart';

class ConnectedChatModel {
  ConnectedChatModel(
      {required this.userName,
      required this.imageUrl,
      required this.caption,
      required this.isSpeaking});

  String userName;
  String imageUrl;
  String caption;
  RxBool isSpeaking;
}
