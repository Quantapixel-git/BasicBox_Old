import 'package:ecom2/core/splash_screen.dart';
import 'package:ecom2/features/auth/screens/login_screen.dart';
import 'package:ecom2/features/auth/screens/register_screen.dart';
import 'package:ecom2/features/auth/screens/update_profile_page.dart';
import 'package:ecom2/features/auth/screens/verification_screen.dart';
import 'package:ecom2/features/comments/screens/add_comment_screen.dart';
import 'package:ecom2/features/comments/screens/rating_and_comments.dart';
import 'package:ecom2/features/events/screens/events_screen.dart';
import 'package:ecom2/features/merchant/screens/merchant_info_screen.dart';
import 'package:ecom2/features/news/screens/news_screen.dart';
import 'package:ecom2/features/onboarding/screens/onboard_screen.dart';
import 'package:ecom2/features/products/screens/product_details_screen.dart';
import 'package:ecom2/features/products/screens/product_screen.dart';
import 'package:ecom2/features/profile/screens/profile_screen.dart';
import 'package:ecom2/features/search/search_screen.dart';
import 'package:ecom2/screens/bottom_nav_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomRoutes {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: "/${SplashScreen.route}",
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: "/${ProductDetailsScreen.route}",
        name: ProductDetailsScreen.route,
        builder: (context, state) => const ProductDetailsScreen(),
      ),
      GoRoute(
        path: "/${ProductScreen.route}",
        name: ProductScreen.route,
        builder: (context, state) => const ProductScreen(),
      ),
      GoRoute(
        path: "/${SearchScreen.route}",
        name: SearchScreen.route,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: "/${EventsScreen.route}",
        name: EventsScreen.route,
        builder: (context, state) => const EventsScreen(),
      ),
      GoRoute(
        path: "/${NewsScreen.routee}",
        name: NewsScreen.routee,
        builder: (context, state) => const NewsScreen(),
      ),
      GoRoute(
        path: "/",
        name: "/",
        builder: (context, state) => const BottomNavLayout(),
      ),
      GoRoute(
        path: "/${OnboardScreen.route}",
        name: OnboardScreen.route,
        builder: (context, state) => const OnboardScreen(),
      ),
      GoRoute(
        path: "/${UpdateProfilePage.route}",
        name: UpdateProfilePage.route,
        builder: (context, state) => const UpdateProfilePage(),
      ),
      GoRoute(
        path: "/${VerificationScreen.route}",
        name: VerificationScreen.route,
        builder: (context, state) => VerificationScreen(),
      ),
      GoRoute(
        path: "/${LoginScreen.route}",
        name: LoginScreen.route,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: "/${RegisterScreen.route}",
        name: RegisterScreen.route,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: "/${MerchantInfoScreen.route}",
        name: MerchantInfoScreen.route,
        builder: (context, state) => const MerchantInfoScreen(),
      ),
      GoRoute(
        path: "/${RatingAndComments.route}",
        name: RatingAndComments.route,
        builder: (context, state) => const RatingAndComments(),
      ),
      GoRoute(
        path: "/${AddCommentScreen.route}",
        name: AddCommentScreen.route,
        builder: (context, state) => const AddCommentScreen(),
      ),
      GoRoute(
        path: "/${ProfileScreen.route}",
        name: ProfileScreen.route,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: "/${SplashScreen.route}",
        name: SplashScreen.route,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
