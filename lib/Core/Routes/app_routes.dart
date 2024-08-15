import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/Sign%20Up%20Doctor/sign_up_doctor.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/Sign%20Up%20Patinet/sign_up_patinet.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/Sign_Up_As/sign_up_as.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SignUpAs()
    ),
    GoRoute(
      path: Paths.signUpPatient,
      builder: (context, state) => const SignUpPatinet(),
      ),
    GoRoute(
      path: Paths.signUpDoctor,
      builder: (context, state) => const SignUpDoctor(),
      )
  ],
);