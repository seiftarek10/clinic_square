import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Features/Patient/Doctor%20Consultation/Presentation/View/Widgets/payment_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool _isPayByCreditCard = false;
  bool _isPayInClinic = false;

  void _handle1Checkbox(bool? value) {
    setState(() {
      _isPayByCreditCard = value!;
      if (_isPayByCreditCard) {
        _isPayInClinic = false;
      }
    });
  }

  void _handle2Checkbox(bool? value) {
    setState(() {
      _isPayInClinic = value!;
      if (_isPayInClinic) {
        _isPayByCreditCard = false;
      }
    });
  }

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
        PaymentOption(
          title: 'Credit Card',
          isChecked: _isPayByCreditCard,
          onChanged: _handle1Checkbox,
        ),
        PaymentOption(
          title: 'Payment at the Clinic',
          isChecked: _isPayInClinic,
          onChanged: _handle2Checkbox,
        ),
      ],
    );
  }
}
