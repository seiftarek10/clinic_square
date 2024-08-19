import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Features/Doctor%20Consultation/Presentaion/View/Widgets/payment_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 28,
              backgroundColor: Color.fromARGB(255, 253, 232, 202),
              child: Icon(
                Icons.payment_outlined,
                color: Colors.orange,
                size: 28,
              ),
            ),
            SizedBox(width: 12.w),
            Text("Payment Options", style: Fonts.font20_700darkBlue),
          ],
        ),
        Space.bottomSpace,
        const PaymentOption()
      ],
    );
  }
}
