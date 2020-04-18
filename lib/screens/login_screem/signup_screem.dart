import 'package:flutter/material.dart';
import 'package:zoomUI/widgets/button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
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
                        'Sign Up',
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
            const Divider(),
            SizedBox(
              height: 30,
            ),
            const Divider(
              height: 1,
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[50],
              child: FractionallySizedBox(
                widthFactor: 0.70666666666, // 265 / 375
                child: TextField(
                  // controller: screenNameController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.black26),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Divider(
              height: 1,
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[50],
              child: FractionallySizedBox(
                widthFactor: 0.70666666666, // 265 / 375
                child: TextField(
                  // controller: screenNameController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    hintStyle: TextStyle(color: Colors.black26),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Divider(
              height: 1,
            ),
           
            Container(
              width: double.infinity,
              color: Colors.grey[50],
              child: FractionallySizedBox(
                widthFactor: 0.70666666666, // 265 / 375
                child: TextField(
                  // controller: screenNameController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    hintStyle: TextStyle(color: Colors.black26),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Divider(
              height: 1,
            ),
            Row(
              children: <Widget>[
                Checkbox(
                    value: agree,
                    onChanged: (val) {
                      agree = true;
                      setState(() {});
                    }),
                Text(
                  'I agree to the Terms of Service',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              width: double.infinity,
              height: 45,
              child: Button(
                text: 'Sign Up',
                function: () {},
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}
