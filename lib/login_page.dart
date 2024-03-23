import 'package:login_ui/components/my_button.dart';
import 'package:login_ui/components/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/register.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  const Color(0xFFfffffc),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Icon(
                    Icons.mark_chat_read_rounded,
                    size: 80,
                    color: Color(0xff502f4c),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Buddy where were u..these days ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MyTextField(
                      controller: emailController,
                      hintText: 'email',
                      obsecureText: false),
                  SizedBox(
                    height: 25,
                  ),
                  MyTextField(
                      controller: passwordController,
                      hintText: 'pasword',
                      obsecureText: true),
                  SizedBox(
                    height: 25,
                  ),
                  MyButton(onTap: () {}, text: "Log in"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member?'),
                      SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => register()),
                          );
                        },
                        child: Text(
                          'Register now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
