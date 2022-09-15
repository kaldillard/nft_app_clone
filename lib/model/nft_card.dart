import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NftCard extends StatelessWidget {
  final String image;
  final double price;
  VoidCallback onTap;

  NftCard(
      {Key? key, required this.image, required this.price, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.r, left: 25.r, right: 25.r),
      child: Container(
          height: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )),
          child: Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "$price ETH",
                            style: GoogleFonts.bebasNeue(
                                fontSize: 18.sp, color: Colors.white),
                          ),
                          Text(
                            "Floor price",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 12.sp,
                              color: Colors.grey.shade300,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apiens",
                      style: GoogleFonts.bebasNeue(
                          fontSize: 48.sp, color: Colors.white),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            backgroundColor: Colors.white),
                        onPressed: () => {},
                        child: Text(
                          "Discover",
                          style: GoogleFonts.bebasNeue(
                              fontSize: 18.sp, color: Colors.black),
                        )),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
