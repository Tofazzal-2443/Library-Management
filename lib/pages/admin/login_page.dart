import 'package:flutter/material.dart';
import 'package:library_management/custom_widgets/common_button.dart';
import 'package:library_management/custom_widgets/texts_and_color.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey();
  bool _isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Admin Login",
                style: TextStyle(
                  fontSize: 30,
                  color: clrText,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    //********* Email Text field
                    TextFormField(
                      validator: (value) {
                        // Check if this field is empty
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }

                        // using regular expression
                        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return "Please enter a valid email address";
                        }

                        // the email is valid
                        return null;
                      },
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: clrText,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: clrText,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: clrText,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        errorStyle: TextStyle(color: Colors.redAccent),
                        hintText: "Enter your email",
                        labelText: "Enter your email",
                        labelStyle: TextStyle(
                          color: clrText,
                        ),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: clrText,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //********* password Text field
                    TextFormField(
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: clrText,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: clrText,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: clrText,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        errorStyle: TextStyle(color: Colors.redAccent),
                        hintText: "Enter your password",
                        labelText: "Enter your password",
                        labelStyle: TextStyle(
                          color: clrText,
                        ),
                        prefixIcon: Icon(
                          Icons.password,
                          color: clrText,
                        ),
                        suffixIcon: Icon(_isObsecure
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    SizedBox(height: 20,),
                    CommonButton(
                      text: "Login",
                      onTap: () {},
                    ),
                    SizedBox(height: 40,),
                    CommonButton(
                      text: "Create new account",
                      onTap: () {},
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
