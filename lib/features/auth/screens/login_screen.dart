import 'package:ecom2/core/router/route_name.dart';
import 'package:ecom2/features/auth/providers/auth_provider.dart';
import 'package:ecom2/core/common/widgets/button.dart';
import 'package:ecom2/core/common/widgets/input.dart';
import 'package:ecom2/features/auth/screens/register_screen.dart';
import 'package:ecom2/features/auth/screens/verification_screen.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  static final route = '/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back_ios),
              SizedBox(
                height: 70.0,
              ),
              Text(
                "Welcome back to \n Basics Box",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Silahkan masukan data untuk login",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey2,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Input(
                label: "Email/ Phone",
                placeholder: "Masukan Alamat Email/ No Telepon Anda",
                controller: authProvider.emailController,
              ),
              SizedBox(
                height: 30.0,
              ),
              Input(
                suffixIcon: GestureDetector(
                  onTap: authProvider.toggleShowPassword,
                  child: Icon(
                    authProvider.showPassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.grey2,
                  ),
                ),
                secureEntry: !authProvider.showPassword,
                label: "Password",
                placeholder: "Masukan Kata Sandi Akun",
                controller: authProvider.passwordController,
              ),
              SizedBox(
                height: 70.0,
              ),
              Button(
                disabledBackgroundColor: AppColors.grey1,
                onTap: () {
                  context.pushNamed(VerificationScreen.route);
                },
                title: "Sign In",
                fullWidth: true,
                backgroundColor: AppColors.secondary,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Forget Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(RegisterScreen.route);
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.secondary,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
