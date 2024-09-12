import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Core/Widgets/date_widget.dart';
import 'package:clinic_square/Core/Widgets/info_widget.dart';
import 'package:clinic_square/Core/Widgets/location_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicineInfoBottomSheet extends StatelessWidget {
  const MedicineInfoBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Wrap(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Column(children: [
                            Space.verticalSpace24,
                            const InfoWidget(info: "Pharmacy Name"),
                            Space.verticalSpace12,
                            const LocationWidget(location: 'Giza'),
                            Space.verticalSpace12,
                            const DateWidget(date: '2022'),
                            Space.verticalSpace18
                          ]),
                        ),
                      ],
                    );
                  },isScrollControlled: true );
            },
            child: Text("More", style: Fonts.font15_500mainBlue)));
  }
}
