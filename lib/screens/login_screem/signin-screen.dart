import 'package:flutter/material.dart';
import 'package:zoomUI/widgets/button.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
                  child: Column(
            children: [
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
                          'Sign In',
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
                      hintText: 'Password',
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
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                width: double.infinity,
                height: 45,
                child: Button(
                  text: 'Sign In',
                  function: () {},
                ),
              ),
              Text(
                'Forgot password?',
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'OR, SIGN IN WITH',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: Image.network(
                    'https://pluspng.com/img-png/google-logo-png-open-2000.png',
                  ),
                ),
                title: Text('Google'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey[400],
                ),
              ),
              const Divider(
                height: 1,
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: Image.network(
                    'https://www.pngkit.com/png/full/0-4533_facebook-logo-png-transparent-facebook-logo-vector.png',
                  ),
                ),
                title: Text('Facebook'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey[400],
                ),
              ),
              const Divider(
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
