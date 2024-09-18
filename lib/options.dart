import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

class JistiMeeting {
  Future<void> createMetting({
    required String roomName,
    bool isAudioMuted = true,
    bool isVideoMuted = true,
  }) async {
    var options = JitsiMeetConferenceOptions(
      serverURL: "https://meet.jit.si",
      room: roomName,
      configOverrides: {
        "startWithAudioMuted": isAudioMuted,
        "startWithVideoMuted": isVideoMuted,
        "subject": "Hello Buddy",
      },
      featureFlags: {
        "unsaferoomwarning.enabled": false,
      },  
      userInfo: JitsiMeetUserInfo(
        displayName: "Rahul Chacha",
        email: "deepeshkalurs@gmai.com",
      ),
    );
    print("I reached here");
    await JitsiMeet().join(options);
  }
}
