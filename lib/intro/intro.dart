import 'package:flutter/material.dart';
import 'package:test_vuln/auth/signup.dart';
import '../auth/login.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ========== BACKGROUND PHOTO ==========
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg1_noLogo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Dark overlay for text readability
          Container(
            color: Colors.black.withOpacity(0.4),
          ),

          // ========== CONTENT ==========
          SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),

                    // ========== MAIN CONTENT (Title, Subtitle, Button) ==========
                    Column(
                      children: [
                        const Text(
                          'LEARN SECURITY\nBY DOING.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFDC7C7),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'AI-powered app to find &\nfix vulnerabilities',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF726464),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Navigate to Sign Up page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text('START THE MISSION'),
                        ),
                      ],
                    ),

                    const Spacer(),

                    // ========== FOOTER ==========
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/EthixLabs_LOGO.png',
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          '@2026',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}