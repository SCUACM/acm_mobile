import 'package:acm_mobile/firebase_options.dart';
import 'package:acm_mobile/pages/example.dart';
import 'package:acm_mobile/pages/home.dart';
import 'package:acm_mobile/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Handler homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const HomePage();
  });
  Handler exampleHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const ExamplePage();
  });
  Handler loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const LoginPage();
  });
  router.define("/", handler: homeHandler);
  router.define("/example", handler: exampleHandler);
   router.define("/login", handler: loginHandler);
  // router.notFoundHandler = homeHandler;
  runApp(DevicePreview(
      enabled: true, // Toggle to enable or disable the device preview
      builder: (context) => MyApp(),
    ),);
}
final router = FluroRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<User?>.value(
            value: FirebaseAuth.instance.authStateChanges(), initialData: null),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(28, 85, 141, 1.0)),
          useMaterial3: true,
        ),
        onGenerateRoute: router.generator,      ),
    );
  }
}
