import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_education/core/ui/context_extensions.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      margin: EdgeInsets.symmetric(vertical: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning!",
                style: TextStyle(color: Colors.white, fontSize: 16.w, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Shivam",
                style: TextStyle(color: Colors.white, fontSize: 14.w, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              context.showCustomBottomSheet(
                  backgroundColor: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.h, bottom: 45.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Thank you for showing interest in us!!",
                          style: TextStyle(color: Colors.white, fontSize: 17.w),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text("Our SPOC will be connecting with you shortly on your provided contact details",
                            textAlign: TextAlign.center, style: TextStyle(color: Colors.yellow, fontSize: 13.w))
                      ],
                    ),
                  ));
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.blueAccent, // Button background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Rounded corners
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0), // Padding inside button
            ),
            child: const Text(
              "Talk to us!",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
