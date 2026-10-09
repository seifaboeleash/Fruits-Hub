import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/constants/app_text_styles.dart';

class OrDvider extends StatelessWidget {
  const OrDvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(height: 1)),
        SizedBox(width: 8.w),
        Text('أو',
            style: AppTextStyles.semiBold16Black),
        SizedBox(width: 8.w),
        Expanded(child: Divider(height: 1)),
      ],
    );
  }
}