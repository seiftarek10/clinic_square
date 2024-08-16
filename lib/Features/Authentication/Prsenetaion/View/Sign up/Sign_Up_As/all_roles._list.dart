import 'package:clinic_square/Core/Routes/routes_path_key.dart';
import 'package:clinic_square/Features/Authentication/Prsenetaion/View/Sign%20up/Sign_Up_As/role_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class AllRolesList extends StatelessWidget {
  const AllRolesList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoleContainer(
          onTap: () {
            GoRouter.of(context).push(Routes.signUpPatient);
          },
          role: 'Patient',
          width: 6.w,
          icon: FontAwesomeIcons.userLarge,
        ),
        RoleContainer(
          onTap: () {
            GoRouter.of(context).push(Routes.signUpDoctor);
          },
          role: 'Doctor',
          width: 6.w,
          icon: FontAwesomeIcons.userDoctor,
        ),
        RoleContainer(
            onTap: () {
              GoRouter.of(context).push(Routes.signUpLab);
            },
            role: 'Lab',
            width: 25.w,
            icon: FontAwesomeIcons.flaskVial),
        RoleContainer(
          onTap: () {
            GoRouter.of(context).push(Routes.signUpPharmacy);
          },
          role: 'Pharmacy',
          width: 6.w,
          icon: FontAwesomeIcons.mortarPestle,
        ),
      ],
    );
  }
}
