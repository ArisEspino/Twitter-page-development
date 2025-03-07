import 'package:fluro/fluro.dart';
import 'package:flutter_application_3/ui/views/no_page_found.dart';

class NoPageFoundHandlers {
  static Handler noPageFound = Handler(
    handlerFunc: (context, params) {
      return NoPageView();
    },
  );
}
