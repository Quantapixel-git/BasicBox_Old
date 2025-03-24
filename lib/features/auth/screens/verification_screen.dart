import 'package:ecom2/features/auth/providers/auth_provider.dart';
import 'package:ecom2/core/common/widgets/button.dart';
import 'package:ecom2/features/auth/screens/update_profile_page.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

class VerificationScreen extends StatelessWidget {
  static final route = "verification";
  const VerificationScreen({super.key});

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
                "Verification",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text:
                        "Kami telah mengirimkan kode verifikasi ke \n +628*******716 ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey2,
                    ),
                    children: [
                      TextSpan(
                        text: "Ganti",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondary,
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Verification Code",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    "Re-send Code",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondary,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Pinput(
                      length: 4,
                      defaultPinTheme: PinTheme(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Button(
                disabledBackgroundColor: AppColors.grey1,
                onTap: () {
                  context.pushNamed(UpdateProfilePage.route);
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
