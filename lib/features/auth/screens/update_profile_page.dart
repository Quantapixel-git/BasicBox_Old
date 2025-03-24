import 'package:ecom2/core/router/route_name.dart';
import 'package:ecom2/features/auth/providers/auth_provider.dart';
import 'package:ecom2/core/common/widgets/button.dart';
import 'package:ecom2/core/common/widgets/input.dart';
import 'package:ecom2/screens/bottom_nav_layout.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class UpdateProfilePage extends StatelessWidget {
  static final String route = "updateProfile";
  const UpdateProfilePage({super.key});

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
              GestureDetector(
                  onTap: context.pop, child: Icon(Icons.arrow_back_ios)),
              SizedBox(
                height: 70.0,
              ),
              Text(
                "Profile & Password",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lengkapi data terakhir berikut untuk masuk ke aplikasi Mega Mall",
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
                label: "Full Name",
                placeholder: "Matias Duarte",
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
                height: 10.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: AppColors.grey2,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Kata sandi harus 6 karakter atau lebih",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.grey2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Input(
                secureEntry: true,
                label: "Referal Code (Optional)",
                placeholder: "Input your code",
                controller: authProvider.passwordController,
              ),
              Spacer(),
              Button(
                disabledBackgroundColor: AppColors.grey1,
                onTap: () {
                  context.goNamed("/");
                },
                title: "Continue",
                fullWidth: true,
                backgroundColor: AppColors.secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
