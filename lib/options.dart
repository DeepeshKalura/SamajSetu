import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

class JistiMeeting {
  Future<void> createMetting({
    required String roomName,
    bool isAudioMuted = true,
    bool isVideoMuted = true,
  }) async {
    final jitsiMeet = JitsiMeet();
    var options = JitsiMeetConferenceOptions(
      serverURL: "https://meet.jit.si/MixedPoliticiansDesignatePresumably",
      // token:
      //     "eyJraWQiOiJ2cGFhcy1tYWdpYy1jb29raWUtNTUzOTc4ZjUzNTJiNDRmNDg2OTM3YTA0MDU2OGQ3ZmUvMzU4ZDljLVNBTVBMRV9BUFAiLCJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJqaXRzaSIsImlzcyI6ImNoYXQiLCJpYXQiOjE3MjY3MjE3MDIsImV4cCI6MTcyNjcyODkwMiwibmJmIjoxNzI2NzIxNjk3LCJzdWIiOiJ2cGFhcy1tYWdpYy1jb29raWUtNTUzOTc4ZjUzNTJiNDRmNDg2OTM3YTA0MDU2OGQ3ZmUiLCJjb250ZXh0Ijp7ImZlYXR1cmVzIjp7ImxpdmVzdHJlYW1pbmciOnRydWUsIm91dGJvdW5kLWNhbGwiOnRydWUsInNpcC1vdXRib3VuZC1jYWxsIjpmYWxzZSwidHJhbnNjcmlwdGlvbiI6dHJ1ZSwicmVjb3JkaW5nIjp0cnVlfSwidXNlciI6eyJoaWRkZW4tZnJvbS1yZWNvcmRlciI6ZmFsc2UsIm1vZGVyYXRvciI6dHJ1ZSwibmFtZSI6IkRlZXBlc2hLYWx1cmEiLCJpZCI6Imdvb2dsZS1vYXV0aDJ8MTEwMjk5NTUxNTE5NTA0NzA3NDMzIiwiYXZhdGFyIjoiIiwiZW1haWwiOiJkZWVwZXNoa2FsdXJzQGdtYWlsLmNvbSJ9fSwicm9vbSI6IioifQ.Gd6Q80FEe4kXwE1BIhIc99slG9Sjf0hT9_J3gpz1CRrUe2ZLSuLxOAt0ML4ttWqZ33vc8CQ68rbmCMPQCzg-2dxiG6eMf5cIsW5v2xUgZIW5Z9DZLg0NON7q4tukSEd5cF0uhV9ZE9dOiPwESip4vDnqkZ2ru4QmYtxdhW2rt4diUw60Hjv0igibrdbGEiaYjAoGzTL5w-fWHhEPZAKwJgGCsk4kD-kxICAsnOokSI2lllG9lw2cDHMFiGPdc8g1sOK2sjQaInNeL3B5h-xTPcXirhEGxRbx5R81sWsQhr0-iJVfckLZXXxwrIXUPBb9SLcmK4yoMsPv96OirtFbmw",
      room: roomName,
      configOverrides: {
        "startWithAudioMuted": isAudioMuted,
        "startWithVideoMuted": isVideoMuted,
        "subject": "Hello Buddy",
      },
      featureFlags: {
        "unsaferoomwarning.enabled": false,
        // "security-options.enabled": false
      },
      userInfo: JitsiMeetUserInfo(
        displayName: "DeepeshKalura",
        email: "deepeshkalurs@gmail.com",
      ),
    );
    await jitsiMeet.join(options);
  }
}
