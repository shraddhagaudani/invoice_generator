import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utills/image_utills.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? Email;
  String? Password;

  bool Showpassword = true;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          alignment: Alignment.topLeft,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "Invoice\nGenerator App",
                  style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                const SizedBox(
                  height: 90,
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter E-mail Address";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (v) {
                          Email = v;
                        },
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.email),
                          hintText: "E-mail Address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.teal,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: Showpassword,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Password";
                          } else if (val.length < 8) {
                            return "Please Enter 8-digit Password";
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.done,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                Showpassword = !Showpassword;
                              });
                            },
                            icon: (Showpassword)
                                ? const Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey,
                                  )
                                : const Icon(
                                    Icons.visibility_outlined,
                                    color: Colors.grey,
                                  ),
                          ),
                          hintText: "Password",
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30),),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.teal,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                      SizedBox(
                        height: 50,
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (formkey.currentState!.validate()) {
                                setState(() {
                                  formkey.currentState!.save();
                                });
                                Navigator.of(context).pushNamed('/');
                              }
                            });
                          },
                          child: Text(
                            "Login",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.teal,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black45,
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Image(
                                image: AssetImage(
                                  imagepath + "fb.png",
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black45,
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Image(
                                image: AssetImage(
                                  imagepath + "google.png",
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black45,
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Image(
                                image: AssetImage(
                                  imagepath + "a1.png",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            " Don't have an account?  ",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
