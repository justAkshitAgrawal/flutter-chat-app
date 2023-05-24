import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Neumorphic(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'ZapChat',
                        style: GoogleFonts.montserrat(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  const SizedBox(height: 30),
                  Neumorphic(
                    style: const NeumorphicStyle(depth: -2),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Username',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Neumorphic(
                    style: const NeumorphicStyle(depth: -2),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  NeumorphicButton(
                      child: Text(
                        'Login',
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {})
                ],
              ),
            )),
          ),
        ),
      );
    });
  }
}
