import 'package:clinic_square/Features/Authentication/Prsenetaion/Sign%20up/Sign_Up_As/role_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AllRolesList extends StatelessWidget {
  const AllRolesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoleContainer(
          onTap: (){},
          role: 'Patient',
          width: 6.w,
          icon: FontAwesomeIcons.userLarge,
        ),
        RoleContainer(
          onTap: (){},
          role: 'Doctor',
          width: 6.w,
          icon: FontAwesomeIcons.userDoctor,
        ),
        RoleContainer(
          onTap: (){},
            role: 'Lab', width: 25.w, icon: FontAwesomeIcons.flaskVial),
        RoleContainer(
          onTap: (){},
          role: 'Pharmacy',
          width: 6.w,
          icon: FontAwesomeIcons.mortarPestle,
        ),
      ],
    );
  }
}
