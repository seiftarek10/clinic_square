import 'package:clinic_square/Core/Helpers/space.dart';
import 'package:flutter/material.dart';

class PhotoAndUserName extends StatelessWidget {
  const PhotoAndUserName({
    super.key,
    required this.photo,
  });
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(radius: 60, backgroundImage: AssetImage(photo)),
            Space.bottomSpace,
          ],
        ));

    //   return CircleAvatar(
    //     child: CachedNetworkImage(
    //       imageUrl: photo,
    //       fit: BoxFit.cover,
    //     ),
    //     radius: 60,
    //   );
  }
}
