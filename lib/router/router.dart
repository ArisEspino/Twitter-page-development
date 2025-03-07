import 'package:fluro/fluro.dart';
import 'package:flutter_application_3/router/admin_handlers.dart';
import 'package:flutter_application_3/router/no_page_found_handlers.dart';

class Flurorouter {
  //Creando una instancia
  static final FluroRouter router = new FluroRouter();
  //Route de inicio
  static String rootRoute = '/';

  //Auth Route
  static String loginRoute = '/auth/login';
  static String registerRouter = '/auth/register';

  //router of DashBoard
  static String dashboardRoute = '/dashboard';

  static void configureRoutes() {
    //definir las rutas
    router.define(
      rootRoute,
      handler: AdminHandlers.login,
      transitionType: TransitionType.none,
    );
    router.define(
      loginRoute,
      handler: AdminHandlers.login,
      transitionType: TransitionType.none,
    );
    router.define(
      registerRouter,
      handler: AdminHandlers.register,
      transitionType: TransitionType.none,
    );

    //404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
