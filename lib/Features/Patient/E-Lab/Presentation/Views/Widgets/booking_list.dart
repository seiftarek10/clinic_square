import 'package:clinic_square/Core/Themes/colors.dart';
import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/View%20Models/Cubits/scans_reservation/scans_reservation_cubit.dart';
import 'package:clinic_square/Features/Patient/E-Lab/Presentation/View%20Models/Cubits/scans_reservation/scans_reservation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingListWidget extends StatefulWidget {
  const BookingListWidget({
    super.key,
  });

  @override
  State<BookingListWidget> createState() => _BookingListWidgetState();
}

class _BookingListWidgetState extends State<BookingListWidget>
    with TickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation =
        Tween<double>(begin: 0, end: 50.h).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScansReservationCubit, ScansReservationState>(
        listener: (context, state) {
      if (state is ModifyScansList) {
        if (state.scanLength == 0) {
          _animationController.reverse();
        } else {
          _animationController.forward();
        }
      }
    }, builder: (context, state) {
      if (state is ModifyScansList) {
        return AnimatedBuilder(
          animation: _animation,
          child: _AnimationChild(
            counter: state.scanLength,
          ),
          builder: (context, child) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              height: _animation.value,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: AppColors.appGradient(1)),
              child: child,
            );
          },
        );
      } else {
        return SizedBox.shrink();
      }
    });
  }
}

class _AnimationChild extends StatelessWidget {
  const _AnimationChild({
    super.key,
    required this.counter,
  });
  final int counter;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Booking List", style: Fonts.font16_600White),
        Text("$counter Scans", style: Fonts.font16_600White),
      ],
    );
  }
}
