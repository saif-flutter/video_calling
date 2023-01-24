import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import 'Utils/app_settings.dart';

final String localUserID = math.Random().nextInt(10000).toString();

class VideoCallPage extends StatefulWidget {
  String idController;

  VideoCallPage({Key? key, required this.idController}) : super(key: key);

  @override
  State<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends State<VideoCallPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: appId,
        appSign: appSign,
        callID: widget.idController,
        userID: localUserID,
        userName: 'userID $localUserID',
        config: ZegoUIKitPrebuiltCallConfig.groupVideoCall()
          ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
      ),
    );
  }
}
