import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/Sign_Up_As/sign_up_as.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SignUpAs(),
      
    ),
  ],
);