import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/formatters.dart';
import '../login/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back, color: Colors.white,)),
        backgroundColor: Colors.black12,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create an account",
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Welcome! Please enter your details.",
                  style: GoogleFonts.poppins(color: Colors.white70),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                /// Name Fields
                Text(
                  "Name",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon:
                          Icon(Icons.person, color: Colors.white),
                          hintText: "First Name",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                              const BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                              const BorderSide(color: Colors.white)),
                        ),
                        validator: (value) =>
                            InputValidators.validateFirstName(value),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon:
                          Icon(Icons.person, color: Colors.white),
                          hintText: "Last Name",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                              const BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                              const BorderSide(color: Colors.white)),
                        ),
                        validator: (value) =>
                            InputValidators.validateLastName(value),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                /// Phone Number
                Text(
                  "Phone Number",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone, color: Colors.white),
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Phone Number is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                /// Email
                Text(
                  "Email",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    prefixIcon:
                    Icon(Icons.mail_outline, color: Colors.white),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white)),
                  ),
                  validator: (value) => InputValidators.validateEmail(value),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                /// Password
                Text(
                  "Password",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                          _obscureText ? Iconsax.eye : Iconsax.eye_slash,
                          color: Colors.white),
                    ),
                    prefixIcon:
                    Icon(Icons.lock_outline, color: Colors.white),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white)),
                  ),
                  validator: (value) => InputValidators.validatePassword(value),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),

                /// Sign Up Button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade800,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                SizedBox(height: MediaQuery.of(context).size.height * 0.1),

                /// Login Navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style:
                      GoogleFonts.poppins(fontSize: 15, color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () => Get.to(() => LoginPage()),
                      child: Text(
                        "Log in",
                        style: GoogleFonts.poppins(
                            color: Colors.orange.shade800, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
