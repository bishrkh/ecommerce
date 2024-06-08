import 'package:ecommerce/shared/widgets/circular_loading.dart';
import 'package:flutter/material.dart';

loadingDialog(
  BuildContext context,
) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => const PopScope(
      canPop: false,
      child: Dialog.fullscreen(
        backgroundColor: Color.fromRGBO(47, 47, 47, 0.01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CircularLoading()],
        ),
      ),
    ),
  );
}

stopDialog(
  BuildContext context,
) {
  if (Navigator.canPop(context)) {
    Navigator.pop(context);
  }
}
