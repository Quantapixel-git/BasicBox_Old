import 'package:ecom2/core/router/route_name.dart';
import 'package:ecom2/features/auth/providers/auth_provider.dart';
import 'package:ecom2/core/common/widgets/button.dart';
import 'package:ecom2/core/common/widgets/input.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  static final route = "reigster";
  const RegisterScreen({super.key});

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
              GestureDetector(onTap: () {}, child: Icon(Icons.arrow_back_ios)),
              SizedBox(
                height: 70.0,
              ),
              Text(
                "Register Account",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Masukan Email/ No. Hp untuk mendaftar ",
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
              Spacer(),
              Button(
                disabledBackgroundColor: AppColors.grey1,
                onTap: () {},
                title: "Continue",
                fullWidth: true,
                backgroundColor: AppColors.secondary,
              ),
              SizedBox(
                height: 102,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an Account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.go(NavigateTo.login);
                    },
                    child: Text(
                      "Sign In",
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
