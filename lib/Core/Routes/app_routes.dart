import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Core/Widgets/Animation/app_transation_page.dart';
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
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/screens/Consultation/consultation_details.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/screens/Consultation/consultation_activity.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/screens/Lab/lab_activities.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/screens/Lab/lab_activity_details.dart';
import 'package:clinic_square/Features/Patient%20Activity/Presentaion/View/screens/patient_activity.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const AppBottomBar()),
    GoRoute(
        path: Routes.singUpAs,
        pageBuilder: (context, state) =>
            slideTransitionPageBuilder(context, state, const SignUpAsView())),
    GoRoute(
      path: Routes.signUpPatient,
      pageBuilder: (context, state) =>
          slideTransitionPageBuilder(context, state, const SignUpPatinetView()),
    ),
    GoRoute(
      path: Routes.signUpDoctor,
      pageBuilder: (context, state) =>
          slideTransitionPageBuilder(context, state, const SignUpDoctorView()),
    ),
    GoRoute(
      path: Routes.signUpLab,
      pageBuilder: (context, state) =>
          slideTransitionPageBuilder(context, state, const SignupLabView()),
    ),
    GoRoute(
      path: Routes.signUpPharmacy,
      pageBuilder: (context, state) =>
          slideTransitionPageBuilder(context, state, const SignUpPharmacy()),
    ),
    GoRoute(
      path: Routes.signin,
      pageBuilder: (context, state) =>
          slideTransitionPageBuilder(context, state, const SignInView()),
    ),
    GoRoute(
      path: Routes.home,
      pageBuilder: (context, state) =>
          slideTransitionPageBuilder(context, state, const HomePage()),
    ),
    GoRoute(
        path: Routes.doctorConsultation,
        pageBuilder: (context, state) => slideTransitionPageBuilder(
            context, state, const DoctorsConsultaionView())),
    GoRoute(
        path: Routes.doctorDetails,
        pageBuilder: (context, state) => slideTransitionPageBuilder(
            context, state, const DoctorDetailsView())),
    GoRoute(
      path: Routes.bookAppoinment,
      pageBuilder: (context, state) => slideTransitionPageBuilder(
          context, state, const BookAppoinmentView()),
    ),
    GoRoute(
      path: Routes.eLab,
      pageBuilder: (context, state) =>
          slideTransitionPageBuilder(context, state, const ElabView()),
    ),
    GoRoute(
      path: Routes.eLabBookView,
      pageBuilder: (context, state) =>
          slideTransitionPageBuilder(context, state, const ElabBookView()),
    ),
    GoRoute(
      path: Routes.ePharmacy,
      pageBuilder: (context, state) =>
          slideTransitionPageBuilder(context, state, const EPharmacyView()),
    ),
    GoRoute(
      path: Routes.ePharmacyInfo,
      pageBuilder: (context, state) =>
          slideTransitionPageBuilder(context, state, const EPharmacyInfoView()),
    ),
    GoRoute(
      path: Routes.patientActivity,
      pageBuilder: (context, state) => slideTransitionPageBuilder(
          context, state, const PatientActivityView()),
    ),
    GoRoute(
        path: Routes.consultationActivity,
        pageBuilder: (context, state) => slideTransitionPageBuilder(
            context, state, const ConsultationActivityView())),
    GoRoute(
        path: Routes.appoinmentDetails,
        pageBuilder: (context, state) => slideTransitionPageBuilder(
            context, state, const ConsultationDetailsView())),
    GoRoute(
        path: Routes.labActivity,
        pageBuilder: (context, state) => slideTransitionPageBuilder(
            context, state, const LabActivitiesView())),
    GoRoute(
        path: Routes.labActivityDetails,
        pageBuilder: (context, state) => slideTransitionPageBuilder(
            context, state, const LabActivityDetailsView())),
  ],
);
