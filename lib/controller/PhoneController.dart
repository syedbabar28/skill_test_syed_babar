import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:skill_test_syed_babar/model/ConnectedChatModel.dart';

class PhoneController extends GetxController {
  var isCaptionEnabled = false.obs;
  var isCallMuted = false.obs;

  var connectedPeoplesList = [
    ConnectedChatModel(
        userName: "Alex Cooper",
        imageUrl:
            "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
        caption: "Hello! My name is Alex what's your name?",
        isSpeaking: true.obs),
    ConnectedChatModel(
        userName: "Joe Howard",
        imageUrl:
            "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
        caption: "Hey Alex! My name is Joe, i'm from New Jersey.",
        isSpeaking: false.obs),
    ConnectedChatModel(
        userName: "Alex Cooper",
        imageUrl:
            "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
        caption: "Hey Joe!, Glad to hear that.",
        isSpeaking: true.obs),
    ConnectedChatModel(
        userName: "Alex Cooper",
        imageUrl:
        "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
        caption: "Hello! My name is Alex what's your name?",
        isSpeaking: false.obs),
    ConnectedChatModel(
        userName: "Joe Howard",
        imageUrl:
        "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
        caption: "Hey Alex! My name is Joe, i'm from New Jersey.",
        isSpeaking: true.obs),
    ConnectedChatModel(
        userName: "Alex Cooper",
        imageUrl:
        "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
        caption: "Hey Joe!, Glad to hear that.",
        isSpeaking: true.obs)
  ];
}
