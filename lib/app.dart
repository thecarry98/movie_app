import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app/remote_binding.dart';
import 'package:movie_app/routes.dart';

class App extends StatelessWidget {
  // static String title;

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Routes.routes,
      initialRoute: Routes.home,
      defaultTransition: Transition.cupertino,
      initialBinding: RemoteBinding(),
    );
  }
}
