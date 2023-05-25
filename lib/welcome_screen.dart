import 'package:first_app/login_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        body: SafeArea(
          child: Animate(
            effects: const [
              FadeEffect(
                duration: Duration(seconds: 1),
              )
            ],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Neumorphic(
                    padding: const EdgeInsets.all(50),
                    style: const NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.circle(),
                      depth: -3.5,
                    ),
                    child: NeumorphicIcon(
                      Icons.quickreply,
                      size: 100,
                      style: const NeumorphicStyle(depth: 2, intensity: 1),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Neumorphic(
                      padding: const EdgeInsets.all(20),
                      style: const NeumorphicStyle(depth: 2, intensity: 1),
                      child: Text(
                        'ZapChat',
                        style: GoogleFonts.montserrat(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NeumorphicButton(
                        onPressed: () {},
                        style: const NeumorphicStyle(depth: 2, intensity: 1),
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 25),
                      NeumorphicButton(
                        onPressed: () {
                          //change screen to LoginScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        style: const NeumorphicStyle(depth: 2, intensity: 1),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
