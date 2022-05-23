import 'package:flutter/material.dart';

class AppFeedback {
  static showErrorMessage({
    required String title,
    required String message,
  }) {
    // Get.showSnackbar(
    //   GetSnackBar(
    //     borderRadius: 12.0,
    //     titleText: TopErrorMessage(title: title, message: message),
    //     messageText: const SizedBox.shrink(),
    //     margin: EdgeInsets.only(left: Dimension.Size_10, right: Dimension.Size_10),
    //     padding: EdgeInsets.only(
    //         top: Dimension.Size_10,
    //         bottom: Dimension.Size_5,
    //         left: Dimension.Size_10),
    //     duration: const Duration(seconds: 2),
    //     animationDuration: const Duration(milliseconds: 600),
    //     borderWidth: 0.5,
    //     boxShadows: const [
    //       BoxShadow(
    //         color: AppColors.primary,
    //         blurRadius: 10,
    //         spreadRadius: 3,
    //       ),
    //     ],
    //     borderColor: AppColors.red,
    //     backgroundColor: AppColors.primary,
    //     snackPosition: SnackPosition.TOP,
    //   ),
    // );
  }

  static showShortMessage({
    required Widget message,
  }) {
    // Get.showOverlay(asyncFunction: () async => await Future.delayed(const Duration(seconds: 2)),
    //   loadingWidget: AlertDialog(
    //     backgroundColor: AppColors.primary,
    //     content : Row(
    //       children: [
    //         Image.asset(
    //           'assets/icons/icon.png',
    //           height: Dimension.Size_30,
    //           width: Dimension.Size_30,
    //         ),
    //         SizedBox(width: Dimension.Size_10),
    //         message,
    //       ],
    //     ),
    //   ),
    // );
  }

  static showSnackFeedback({required bool isSuccess, required String message}) {
    // Get.showSnackbar(
    //   GetSnackBar(
    //     padding: EdgeInsets.only(
    //       top: Dimension.Size_15,
    //       bottom: Dimension.Size_15,
    //       left: Dimension.Size_12,
    //     ),
    //     message: message,
    //     backgroundColor: isSuccess ? AppColors.secondary : Colors.red.shade900,
    //     duration: const Duration(milliseconds: 1500),
    //     animationDuration: const Duration(milliseconds: 400),
    //     snackPosition: SnackPosition.BOTTOM,
    //   ),
    // );
  }
}
