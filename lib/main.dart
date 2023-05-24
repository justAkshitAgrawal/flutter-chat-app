import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
        debugShowCheckedModeBanner: false,
        theme: NeumorphicThemeData(
          baseColor: Color(0xFF21272C),
          shadowLightColorEmboss: Color(0xFF393E44),
          shadowDarkColorEmboss: Color(0xFF101316),
          shadowDarkColor: Color(0xFF101316),
          shadowLightColor: Color(0xFF393E44),
        ),
        home: WelcomeScreen());
  }
}
