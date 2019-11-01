import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth';
  const AuthScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: deviceSize.width,
        height: deviceSize.height,
        margin: EdgeInsets.only(top: 120.0, bottom: 50),
        child: Column(
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage('assets/images/Helio-login3.png'),
              ),
            ),
            Container(
              height: 500,
              width: deviceSize.width,
              color: Colors.pink,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: deviceSize.width - 100,
                        child: RaisedButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/google@3x.png'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                              ),
                              Text('Log in with Gmail')
                            ],
                          ),
                          onPressed: () => {},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      SizedBox(
                        width: deviceSize.width - 100,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.all(20.0),
                          child: Text('Log in with Facebook'),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                  Text('Or'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: deviceSize.width - 100,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.all(20.0),
                          child: Text('Log in with Facebook'),
                          onPressed: () => {},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      SizedBox(
                        width: deviceSize.width - 100,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.all(20.0),
                          child: Text('Log in with Facebook'),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: deviceSize.width - 100,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                      padding: EdgeInsets.all(20.0),
                      child: Text('Sign in'),
                      onPressed: () => {},
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[Text('Don\'t have an account ?')],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
