import 'package:clinic_square/Core/Themes/fonts.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key, required this.location,
  });

  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Color.fromARGB(255, 192, 243, 194),
            child: Icon(
              Icons.location_on,
              color: Colors.green,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 7,
          child: Text(location,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Fonts.font18_600DarkBlue),
        )
      ],
    );
  }
}
