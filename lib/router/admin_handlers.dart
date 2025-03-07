import 'package:fluro/fluro.dart';
import 'package:flutter_application_3/ui/views/login_view.dart';
import 'package:flutter_application_3/ui/views/register_view.dart';

class AdminHandlers {
  static Handler login = Handler(
    handlerFunc: (context, params) {
      return LoginView();
    },
  );

  static Handler register = Handler(
    handlerFunc: (context, params) {
      return RegisterView();
    },
  );


}
