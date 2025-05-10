import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/formatters.dart';
import '../signup/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12, // background
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back, color: Colors.white,)),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Log in",
                style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                "Welcome back! Please enter your details.",
                style: GoogleFonts.poppins(color: Colors.white70),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),

              /// Email Field
              Text("Email",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white)),
              const SizedBox(height: 10),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mail_outline, color: Colors.white70),
                  hintText: "Enter your email",
                  hintStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.grey.shade900,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey.shade700),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                ),
                validator: (value) => InputValidators.validateEmail(value),
              ),

              const SizedBox(height: 20),

              /// Password Field
              Text("Password",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white)),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: _obscureText,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                        _obscureText ? Iconsax.eye_slash : Iconsax.eye,
                        color: Colors.white70),
                  ),
                  prefixIcon: const Icon(Icons.lock_outline, color: Colors.white70),
                  hintText: "Enter your password",
                  hintStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.grey.shade900,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey.shade700),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                ),
                validator: (value) => InputValidators.validatePassword(value),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Get.to(()),
                  child: Text("Forgot your password?",
                      style: GoogleFonts.poppins(color: Colors.orange.shade800)),
                ),
              ),

              const SizedBox(height: 20),

              /// Log In Button
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade800, borderRadius: BorderRadius.circular(15)),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: double.infinity,
                  child: Text("Log in",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 16)),
                ),
              ),

              const SizedBox(height: 30),

              /// Sign up Redirect
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.white)),
                    TextButton(
                      onPressed: () => Get.to(SignupPage()),
                      child: Text("Sign up",
                          style: GoogleFonts.poppins(
                              color: Colors.orange.shade800, fontSize: 15)),
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
