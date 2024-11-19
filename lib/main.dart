import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradeshop/bloc/auth_bloc/auth_bloc.dart';
import 'package:tradeshop/config/theme/dark_theme.dart';
import 'package:tradeshop/view/auth/login_switcher_page.dart';
import 'package:tradeshop/view/auth/sms_code_page/sms_code_page.dart';
import 'package:tradeshop/view/home_page/home_page.dart';
import 'config/theme/light_theme.dart';
import 'config/firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..init(),
      child: MaterialApp(
        title: 'TradeShop',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        initialRoute: '/sms_code_page',
        routes: {
          '/': (context) => const LoginSwitcherPage(),
          '/home': (context) => const HomePage(),
          '/sms_code_page': (context) => const SmsCodePage(),
          // Add more routes as needed
        },
      ),
    );
  }
}
// MultiBlocProvider(
// providers: [
// BlocProvider(create: (context) => FirstBloc()),
// BlocProvider(create: (context) => SecondBloc()),
// ],
// child: YourWidget(),
// )