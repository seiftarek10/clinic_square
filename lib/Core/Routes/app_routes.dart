import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Widgets/bottom_navigation_bar.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20In/sign_in.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_doctor.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_patinet.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_lab.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_pharmacy.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_as.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/doctor_details.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/doctors_consultation.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/home.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const AppBottomBar()),
    GoRoute(
        path: Routes.singUpAs, builder: (context, state) => const SignUpAs()),
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
    GoRoute(path: Routes.signin, builder: (context, state) => const SignIn()),
    GoRoute(path: Routes.home, builder: (context, state) => const HomePage()),
    GoRoute(
        path: Routes.bottomBar,
        builder: (context, state) => const AppBottomBar()),
    GoRoute(
        path: Routes.doctorConsultation,
        builder: (context, state) => const DoctorsConsultaion()),
    GoRoute(
        path: Routes.doctorDetails,
        builder: (context, state) => const DoctorDetailsPage())
  ],
);
