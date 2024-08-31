import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Widgets/bottom_navigation_bar.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20In/sign_in.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_doctor.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_patinet.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_lab.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_pharmacy.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/sign_up_as.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/book_appoinment.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/doctor_details.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/doctors_consultation.dart';
import 'package:clinic_square/Features/E-Lab/Presentaion/Views/elab.dart';
import 'package:clinic_square/Features/E-Lab/Presentaion/Views/elab_book_view.dart';
import 'package:clinic_square/Features/E-Pharmacy/Presentaion/Views/e_pharmacy.dart';
import 'package:clinic_square/Features/E-Pharmacy/Presentaion/Views/e_pharmacy_info.dart';
import 'package:clinic_square/Features/Home/Presentaion/View/home.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const AppBottomBar()),
    GoRoute(
        path: Routes.singUpAs,
        builder: (context, state) => const SignUpAsView()),
    GoRoute(
        path: Routes.signUpPatient,
        builder: (context, state) => const SignUpPatinetView()),
    GoRoute(
        path: Routes.signUpDoctor,
        builder: (context, state) => const SignUpDoctorView()),
    GoRoute(
        path: Routes.signUpLab,
        builder: (context, state) => const SignupLabView()),
    GoRoute(
        path: Routes.signUpPharmacy,
        builder: (context, state) => const SignUpPharmacy()),
    GoRoute(
        path: Routes.signin, builder: (context, state) => const SignInView()),
    GoRoute(path: Routes.home, builder: (context, state) => const HomePage()),
    GoRoute(
        path: Routes.bottomBar,
        builder: (context, state) => const AppBottomBar()),
    GoRoute(
        path: Routes.doctorConsultation,
        builder: (context, state) => const DoctorsConsultaionView()),
    GoRoute(
        path: Routes.doctorDetails,
        builder: (context, state) => const DoctorDetailsView()),
    GoRoute(
        path: Routes.bookAppoinment,
        builder: (context, state) => const BookAppoinmentView()),
    GoRoute(path: Routes.eLab, builder: (context, state) => const ElabView()),
    GoRoute(
        path: Routes.eLabBookView,
        builder: (context, state) => const ElabBookView()),
    GoRoute(
        path: Routes.ePharmacy,
        builder: (context, state) => const EPharmacyView()),
    GoRoute(
        path: Routes.ePharmacyInfo,
        builder: (context, state) => const EPharmacyInfoView())
  ],
);
