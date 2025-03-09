import 'package:flutter/material.dart';
import 'package:flutter_application_3/router/router.dart';
import 'package:flutter_application_3/ui/layouts/auth/auth_layout.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      builder: (_, child) {
        return AuthLayout(child: child!);
      },
      theme: ThemeData.light().copyWith(
        scrollbarTheme: ScrollbarThemeData().copyWith(
          // ignore: deprecated_member_use
          thumbColor: WidgetStateProperty.all(Colors.grey.withOpacity(0.5)),
        ),
      ),
    );
  }
}
