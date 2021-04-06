import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as Foundation;
import 'package:fluttertodoproj/common/common_managers/interfaces/ilogin_manager.dart';
import 'package:fluttertodoproj/common/common_managers/managers/user_manager.dart';
import 'package:fluttertodoproj/http/user_related/fake_user_rest_client.dart';
import 'package:fluttertodoproj/pages/home/page_home.dart';
import 'package:fluttertodoproj/pages/login/page_login.dart';
import 'package:provider/provider.dart';

void main() {
  if (Foundation.kReleaseMode){ // is Release Mode ??
    print('release mode');
  } else {
    print('debug mode');
  }

  final navigatorKey = GlobalKey<NavigatorState>();
  final userManager = UserManager(FakeUserRestClient());
  userManager.isUserLoggedStream.listen((isLogged) {
    if (isLogged){
      navigatorKey.currentState?.pushReplacementNamed('/home');
    } else {
      navigatorKey.currentState?.pushReplacementNamed('');
    }
  });

  runApp(
      MultiProvider(
        providers: [
          Provider<ILoginManager>(
            create: (_) => userManager,
            dispose: (_, __) => userManager.close(),
          )
        ],
        child: MyApp(navigatorKey),
      )
  );
}

class MyApp extends StatelessWidget {

  final GlobalKey<NavigatorState> navigatorKey;

  MyApp(this.navigatorKey);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice todo project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      routes: {
        '': (context) => PageLogin(),
        '/home': (context) => PageHome(),
      },

      home: PageLogin(),
    );
  }
}