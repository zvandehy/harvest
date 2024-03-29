import 'package:flutter/material.dart';
import 'package:harvest/controllers/UserController.dart';
import 'package:harvest/locator.dart';
import 'package:harvest/myColors.dart';

import 'package:harvest/router.dart';
import 'package:harvest/screens/HomeView.dart';
import 'package:harvest/screens/LoginView.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'models/user.dart';

void main() {
  setupLocator();
  runApp(HarvestApp());
}

class HarvestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserController(),
        ),
      ],
      child: MaterialApp(
        title: 'Harvest',
        theme: ThemeData(
          primarySwatch: MaterialColor(green.value, myColor),
          buttonColor: red,
          backgroundColor: white,
          scaffoldBackgroundColor: white,
        ),
        onGenerateRoute: Router.generateRoute,
        initialRoute: RoutePaths.Login,
      ),
    );
  }
}
