import 'package:Softcent/ui/shared/shared.dart';
import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InviteFriendsTitle extends StatelessWidget {
  const InviteFriendsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    return MagicText(
      'Invite Friends & Get Cashback',
      maxWidth: w - 30.w,
      maxLines: 2,
      style: headline1.copyWith(
        fontSize: 17.5.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
