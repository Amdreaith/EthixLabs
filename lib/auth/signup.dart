// lib/auth/signup.dart
import 'package:flutter/material.dart';
import 'package:test_vuln/auth/login.dart';
import 'auth_layout.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'WELCOME, FUTURE\nETHICAL HACKER',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFDC7C7), // Pink accent
                ),
              ),

              const SizedBox(height: 20),

              // ========== MAIN CARD / BUBBLE BOX ==========
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Create an Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Please use your real name. This will appear on your official Certificate of Completion.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white60,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // First Name
                    _buildInputField(label: 'First Name'),
                    const SizedBox(height: 16),

                    // Last Name
                    _buildInputField(label: 'Last Name'),
                    const SizedBox(height: 16),

                    // Username
                    _buildInputField(label: 'Create a Username'),
                    const SizedBox(height: 16),

                    // Password
                    _buildInputField(
                      label: 'Create a Password',
                      obscureText: true,
                      helperText: 'Must be at least 8 characters',
                    ),
                    const SizedBox(height: 12),

                    // Confirm Password
                    _buildInputField(
                      label: 'Confirm Password',
                      obscureText: true,
                    ),

                    // Terms Checkbox
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                          activeColor: const Color(0xFFFDC7C7),
                          checkColor: Colors.black,
                        ),
                        Expanded(
                          child: const Text(
                            'By creating an account, you agree to our Terms of Service and Privacy Policy',
                            style: TextStyle(
                              fontSize: 7,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 2),

                    // Confirm & Proceed Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: Add sign up logic here later
                          print("Sign up button pressed!");

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Account created!'),
                              backgroundColor: Colors.green,
                            ),
                          );

                          // Go directly to Login Screen
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFDC7C7),
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 8,
                        ),
                        child: const Text(
                          'CONFIRM & PROCEED',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 4),

                    // Already have an account? Login link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            'Log-in',
                            style: TextStyle(
                              color: Color(0xFFFDC7C7),
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
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
    );
  }

  //   Reusable Input Field
  Widget _buildInputField({
    required String label,
    bool obscureText = false,
    String? helperText,
  }) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white, fontSize: 14.5),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white54, fontSize: 13),
        helperText: helperText,
        helperStyle: const TextStyle(color: Colors.white54, fontSize: 9.5),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white38),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white38),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFFDC7C7)),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
      ),
    );
  }
}