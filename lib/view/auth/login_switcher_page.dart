import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradeshop/bloc/auth_bloc/auth_bloc.dart';
import 'package:tradeshop/view/auth/login_page/login_page.dart';

class LoginSwitcherPage extends StatelessWidget {
  const LoginSwitcherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSignInComplete) {
          Navigator.of(context).pushReplacementNamed('/home');
        }
        else if (state is AuthSignOutComplete) {
          Navigator.of(context).pushReplacementNamed('/');
        }
        else if (state is AuthLoading) {
          Navigator.of(context).pushNamed('/loading');
        }
      },
      child: const LoginPage(),
    );
  }
}
