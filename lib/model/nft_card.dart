import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NftCard extends StatelessWidget {
  final String image;

  const NftCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.r),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          )),
    );
  }
}
