import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20In/sign_in.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Sign%20Up%20Doctor/sign_up_doctor.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Sign%20Up%20Patinet/sign_up_patinet.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Sign%20up%20Lab/sign_up_lab.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Sign%20up%20pharmacy/sign_up_pharmacy.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Sign_Up_As/sign_up_as.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SignUpAs()),
    GoRoute(path: Routes.singUpAs, builder: (context, state) => const SignUpAs()),
    GoRoute(
        path: Routes.signUpPatient,
        builder: (context, state) => const SignUpPatinet()),
    GoRoute(
        path: Routes.signUpDoctor,
        builder: (context, state) => const SignUpDoctor()),
    GoRoute(
        path: Routes.signUpLab, builder: (context, state) => const SignupLab()),
    GoRoute(
        path: Routes.signUpPharmacy,
        builder: (context, state) => const SignUpPharmacy()),
    GoRoute(path: Routes.signin, builder: (context, state) => const SignIn())
  ],
);
