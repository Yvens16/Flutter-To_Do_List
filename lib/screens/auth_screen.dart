import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth';
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: deviceSize.width,
        height: deviceSize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage('assets/images/Helio-login3.png'),
              ),
              margin: EdgeInsets.only(bottom: 50.0),
            ),
            Container(
              height: 500,
              width: deviceSize.width,
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
                                image:
                                    AssetImage('assets/images/google@3x.png'),
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
                          color: Color(0xffb3563B3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/facebook@3x.png'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.0),
                              ),
                              Text(
                                'Log in with Facebook',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                  Text('Or'),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: deviceSize.width - 120,
                          padding: EdgeInsets.only(right:25.0, left: 25.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff21495F10),
                                offset: Offset(0.0, 10.0),
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email or username',
                                  labelStyle: TextStyle(color: Color(0xff1F314A)),
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                controller: _emailController,
                                validator: (value) {
                                  var valueTOreturn;
                                  if (value.isEmpty || !value.contains('@')) {
                                    valueTOreturn = 'Email is not valid';
                                  }
                                  return valueTOreturn;
                                },
                              ),
                              Divider(
                                height: 20.0,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Color(0xff1F314A)),
                                  border: InputBorder.none,
                                ),
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                                controller: _passwordController,
                                validator: (value) {
                                  var valueTOreturn;
                                  if (value.isEmpty || value.length < 5) {
                                    valueTOreturn = 'password is too short';
                                  }
                                  return valueTOreturn;
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        ),
                        SizedBox(
                          width: deviceSize.width - 100,
                          child: RaisedButton(
                            color: Colors.white,
                            padding: EdgeInsets.all(0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: <Color>[
                                      Color(0xff37ECBA),
                                      Color(0xff72AFD3)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(30.0)),
                              width: deviceSize.width - 100,
                              // height: double.infinity,
                              child: Text(
                                'Sign in',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            onPressed: () => {
                              if (_formKey.currentState.validate())
                                {print('HEllo')}
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Don\'t have an account ?',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black.withOpacity(0.4)),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Color(0xff1F314A),
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
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
