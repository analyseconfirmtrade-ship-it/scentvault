import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'V E L O R A',
                  style: GoogleFonts.cinzel(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 5,
                  ),
                ),
                SizedBox(height: 48),

                Text('Discover.', style: TextStyle(fontSize: 20)),
                SizedBox(height: 12),

                Text('Collect.', style: TextStyle(fontSize: 20)),
                SizedBox(height: 12),

                Text('Experience.', style: TextStyle(fontSize: 20)),
                SizedBox(height: 64),

                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFFF2ECE6),
                    side: const BorderSide(
                      color: Color(0xFFC8A977),
                      width: 1.2,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 36,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
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
