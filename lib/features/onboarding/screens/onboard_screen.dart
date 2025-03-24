import 'package:ecom2/core/router/route_name.dart';
import 'package:ecom2/features/auth/screens/login_screen.dart';
import 'package:ecom2/features/onboarding/providers/onboarding_provider.dart';
import 'package:ecom2/features/onboarding/widgets/onboard_item.dart';
import 'package:ecom2/features/onboarding/widgets/onboarding_text_button.dart';
import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnboardScreen extends StatelessWidget {
  static final route = 'onboard';
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Consumer<OnboardingProvider>(
              builder: (context, provider, child) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: blackColor,
                              fontWeight: FontWeight.w600,
                            ),
                            text: (provider.currentIndex + 1).toString(),
                            children: [
                              TextSpan(
                                text: "/3",
                                style: GoogleFonts.montserrat(
                                  color: Color(0xFFA0A0A1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.pushNamed(LoginScreen.route);
                          },
                          child: Text(
                            "Skip",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: PageView.builder(
                        itemCount: provider.data.length,
                        controller: provider.pageController,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final item = provider.data[index];

                          return OnboardItem(
                            title: item['title'],
                            description: item['description'],
                            localImage: item['image'],
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        provider.currentIndex > 0
                            ? OnboardingTextButton(
                                onTap: provider.goPrev,
                                text: "Prev",
                                textColor: AppColors.dark,
                              )
                            : Container(),
                        Wrap(
                          spacing: 10,
                          children: [
                            Container(
                              width: provider.currentIndex == 0 ? 40 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: AppColors.dark,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                            Container(
                              width: provider.currentIndex == 1 ? 40 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: AppColors.dark,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                            Container(
                              width: provider.currentIndex == 2 ? 40 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: AppColors.dark,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                          ],
                        ),
                        OnboardingTextButton(
                          onTap: () {
                            if (provider.currentIndex == 2) {
                              context.pushNamed(LoginScreen.route);
                            }
                            provider.goNext();
                          },
                          text: provider.currentIndex <= 1 ? "Next" : "Done",
                          textColor: AppColors.red,
                        )
                      ],
                    )
                  ],
                );
              },
            )),
      ),
    );
  }
}
