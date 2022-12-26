import 'package:flutter/material.dart';
class OrdersumaryPart extends StatelessWidget {
  final String? label;
  final String? labelDetails;
  final Color? labelColor;
  final Color? labelDetailsColor;

  const OrdersumaryPart({
    Key? key,
    this.label,
    this.labelDetails,
    this.labelColor,
    this.labelDetailsColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label!,
          style: TextStyle(color: labelColor!),
        ),
        Text(
          labelDetails!,
          style: TextStyle(color: labelDetailsColor!),
        )
      ],
    );
  }
}