import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradeshop/bloc/auth_bloc/auth_bloc.dart';
import 'package:tradeshop/view/widgets/phone_input_std.dart';
import '../../home_page/home_page.dart';
import '../../widgets/elevated_button_std.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/logo.png',
                  width: 200,
                  height: 200,
                ),
                // const SizedBox(height: 10),
                Text(
                  'TradeShop',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: 16),

                const PhoneInputStd(),

                const SizedBox(height: 20),

                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return ElevatedButtonStd(
                        onPressed: ()  {
                          context.read<AuthBloc>().add(const SignInClickEvent());
                          print(state);
                        }, child: const Text('Sign in'));
                  },
                ),

                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/google.png', width: 25),
                          const SizedBox(width: 10),
                          const Text(
                            'Sign in with Google',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
