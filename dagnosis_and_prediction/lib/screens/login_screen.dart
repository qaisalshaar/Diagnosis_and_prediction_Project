import 'package:dagnosis_and_prediction/screens/home_screen.dart';
import 'package:dagnosis_and_prediction/screens/registration_screen.dart';
import 'package:dagnosis_and_prediction/screens/user_info.dart';
import 'package:dagnosis_and_prediction/screens/users_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../components/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

//form key used for validation form
  final _formkey = GlobalKey<FormState>();
  bool isPassword = false;
// editing controller

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

// FireBase

  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
// email field

    final emailField = TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ('Please email Must be not Empty');
          // return validationemailempty;
        }
        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return ('Please enter Correct email');
          // return validationemailformat;
        }

        return null;
      },

      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,

      // validator: (),

      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

//Start  password field

//End  password field

//Login Button

    final loginBotton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          // Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => HomeScreen()));
          // Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => UsresScreen()));
          LogIn(emailController.text, passwordController.text);
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
              child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                          height: 100,
                          child: Image.asset(
                            "assets/test.png",
                            fit: BoxFit.contain,
                          )),
                      SizedBox(height: 45),
                      //Start emailField,

                      TextEmailField(
                        controller: emailController,
                        lableText: 'Email',
                        prefixIcon: Icons.email,
                        isPassword: false,
                        texttype: TextInputType.emailAddress,
                        onChange: () {},
                        onSubmit: () {},
                        // onSaved: (value) {
                        //   emailController.text = value!;
                        // },
                      ),

                      // End Email Field
                      SizedBox(height: 25),
                      //Start passwordField,

                      TextPasswordField(
                        controller: passwordController,
                        texttype: TextInputType.visiblePassword,

                        sufixPressed: () {
                          // print('here');
                          setState(() {
                            isPassword = !isPassword;
                            print('here');
                          });
                        },
                        onSubmit: (value) {
                          // print('KKKKK');
                        },
                        onChange: (value) {
                          print('KKKKK');
                        },
                        // onSaved: (String value) {
                        //   passwordController.text = value;
                        // },
                        lableText: 'Password',
                        prefixIcon: Icons.lock,
                        suffixIcon: isPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        isPassword: isPassword,
                        //End Password field
                      ),
                      // End Password Field
                      SizedBox(height: 35),
                      loginBotton,
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Don't have an account? "),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationScreen()));
                              },
                              child: Text(
                                "SignUp",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            )
                          ])
                    ]),
              ),
            ),
          )),
        ));
  }

// LogIn Function

  void LogIn(String email, String pass) async {
    if (_formkey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: pass)
          .then((uid) => {
                Fluttertoast.showToast(msg: 'Login Sucsusfull'),
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => UserInformation()))
              })
          .catchError((Error) {
        Fluttertoast.showToast(msg: Error!.message);
      });
    }
  }
}
