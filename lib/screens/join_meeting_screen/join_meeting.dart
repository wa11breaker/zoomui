import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoomUI/widgets/button.dart';

class JoinMeeting extends StatefulWidget {
  @override
  _JoinMeetingState createState() => _JoinMeetingState();
}

class _JoinMeetingState extends State<JoinMeeting> {
  TextEditingController meetingController;
  TextEditingController screenNameController;

  bool audio = false;
  bool video = false;

  muteAudio(bool value) {
    setState(() {
      audio = value;
    });
  }

  muteVideo(bool value) {
    setState(() {
      video = value;
    });
  }

  void initState() {
    super.initState();
    meetingController = TextEditingController();
    screenNameController = TextEditingController();
  }

  void dispose() {
    meetingController.dispose();
    screenNameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* App Bar
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Join a Meeting',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      )
                    ],
                  ),
                ),
              ),

              Divider(),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                     const  Divider(height: 0,),
                    Container(
                      width: double.infinity,
                      color: Colors.grey[50],
                                        child: FractionallySizedBox(
                        widthFactor: 0.70666666666, // 265 / 375
                        child: TextField(
                       autofocus: true,
                          controller: meetingController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Meeting ID',
                            hintStyle: TextStyle(color: Colors.black26),
                            border: InputBorder.none,
                            
                          ),
                        ),
                      ),
                    ),
                     const  Divider(height: 0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Join with a personal link name',
                          style: TextStyle(color: Colors.blue)),
                    ),
                  const  Divider(height: 0,),
                    Container(
                      width: double.infinity,
                      color: Colors.grey[50],
                      child: FractionallySizedBox(
                        widthFactor: 0.70666666666, // 265 / 375
                        child: TextField(
                          controller: screenNameController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Screen Name',
                            hintStyle: TextStyle(color: Colors.black26),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                     const  Divider(height: 0,),
                  ],
                ),
              ),
             SizedBox(height: 12,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                height: 45,
                child: Button(
                  text: 'Join',
                  function: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                    'If you received an invitation link, tap on the link again to join the meeting',
                    style: TextStyle(
                        color: Colors.black45, fontSize: 12, height: 1.3)),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text('JOIN OPTIONS',
                    style: TextStyle(
                        color: Colors.black54, fontSize: 12, height: 1.3)),
              ),
              Divider(),

              optinons(
                text: "Don't Connect To Audio",
                value: audio,
                function: muteAudio,
              ),
              Divider(),

              optinons(
                text: "Turn Off My Video",
                value: video,
                function: muteVideo,
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget optinons({text, value, dynamic function}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: TextStyle(fontWeight: FontWeight.w500),),
          CupertinoSwitch(
            value: value,
            onChanged: (value) => function(value),
          ),
        ],
      ),
    );
  }
}
