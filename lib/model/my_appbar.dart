import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  VoidCallback onTap;

  MyAppBar({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(title, style: GoogleFonts.bebasNeue(fontSize: 54.sp)),
          ),
          GestureDetector(
              onTap: onTap,
              child: Container(
                  padding: EdgeInsets.all(12.r),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.grey.shade200),
                  child: Icon(
                    Icons.search,
                    size: 36.sp,
                  )))
        ],
      ),
    );
  }
}
