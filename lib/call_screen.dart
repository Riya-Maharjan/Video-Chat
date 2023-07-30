import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    String userId = DateTime.now().millisecondsSinceEpoch.toString();
    String userName = DateTime.now().toString();
    return ZegoUIKitPrebuiltCall(
        appID: 1152444643,
        appSign:
            '04b780335729ce8ac0c97ac94150c59bea8a4942e8e58a2015a02382a634f7af', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: userId,
        userName: userName,
        callID: 'test_call_id',
        // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall());
  }
}
