import 'package:flutter/material.dart';
import 'package:zoomUI/screens/join_meeting_screen/join_meeting.dart';
import 'package:zoomUI/screens/login_screem/signin-screen.dart';
import 'package:zoomUI/screens/login_screem/signup_screem.dart';
import 'package:zoomUI/screens/onboard_screen/onboard.dart';
import 'package:zoomUI/widgets/button.dart';

class OnBoardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                child:
                    IconButton(icon: Icon(Icons.settings), onPressed: () {})),
            Flexible(
              flex: 7,
              child: Onboard(),
            ),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 250,
                    height: 45,
                    child: Button(
                      text: 'Join a Meeting',
                      function: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JoinMeeting())),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
