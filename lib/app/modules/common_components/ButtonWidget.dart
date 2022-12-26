import 'package:flutter/material.dart';
import '../../config/theme/theme_service.dart';
class ButtonWidget extends StatelessWidget {
  final double? btnHeight;
  final double? btnwidth;
  final Color? btnbgColor;
  final Color? btntextColor;
  final Color? btnborderColor;
  final String? btntext;
  final VoidCallback btnFunc;

  const ButtonWidget({
    Key? key,
    this.btnHeight,
    this.btnwidth,
    this.btnbgColor,
    this.btnborderColor,
    this.btntextColor,
    this.btntext,
    required this.btnFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding:
        EdgeInsets.symmetric(vertical: btnHeight!, horizontal: btnwidth!),
        backgroundColor: btnbgColor,
        foregroundColor: btntextColor,
        textStyle: ThemeService.ButtonTextStyle,
        side: BorderSide(color: btnborderColor!, width: 1),
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2))),
      ),
      onPressed: btnFunc,
      child: Text(btntext!),
    );
  }
}