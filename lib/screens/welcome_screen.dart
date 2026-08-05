import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

bool _showLogo = false;
bool _showDiscover = false;
bool _showCollect = false;
bool _showExperience = false;
bool _showButton = false;
 
@override
void initState() {
  super.initState();

  Future.delayed(const Duration(milliseconds: 400), () {
    setState(() {
      _showLogo = true;
    });
  });

  Future.delayed(const Duration(milliseconds: 900), () {
    if (!mounted) return;
    setState(() {
      _showDiscover = true;
    });
  });
}
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
               AnimatedOpacity(
  opacity: _showLogo ? 1.0 : 0.0,
  duration: const Duration(milliseconds: 800),
  child: Text(
    'V E L O R A',
    style: GoogleFonts.cinzel(
      fontSize: 48,
      fontWeight: FontWeight.w600,
      letterSpacing: 6,
    ),
  ),
),
                SizedBox(height: 48),

              AnimatedOpacity(
  opacity: _showDiscover ? 1.0 : 0.0,
  duration: const Duration(milliseconds: 800),
  child: const Text(
    'Discover.',
    style: TextStyle(fontSize: 20),
  ),
),
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
