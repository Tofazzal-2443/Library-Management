import 'package:flutter/material.dart';
import 'package:library_management/custom_widgets/common_button.dart';
import 'package:library_management/custom_widgets/texts_and_color.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
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
                "Admin Sign Up",
                style: myStyle(
                  30,
                  clrText,
                  FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    //*************Name Text field
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
                        hintText: "Enter your name",
                        labelText: "Enter your name",
                        labelStyle: TextStyle(
                          color: clrText,
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: clrText,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // **************** Email Text Field
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
                        hintText: "password",
                        labelText: "password",
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

                    SizedBox(
                      height: 20,
                    ),

                    //********************* password Text field
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
                        hintText: "Confirm password",
                        labelText: " Confirm password",
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
                    SizedBox(
                      height: 20,
                    ),
                    //********************Admin Referral Code Text field
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
                        hintText: "Admin Referral Code",
                        labelText: "Admin Referral Code",
                        labelStyle: TextStyle(
                          color: clrText,
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: clrText,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CommonButton(
                text: "Sign Up",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
