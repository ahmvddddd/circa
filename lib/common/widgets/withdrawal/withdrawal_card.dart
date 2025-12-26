import 'package:flutter/material.dart';
import '../../../utils/helpers/helper_function.dart';
import '../../custom_shapes.dart/containers/rounded_container.dart';

class WithdrawalCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  const WithdrawalCard({super.key, required this.child, required this.padding});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      padding: padding,
      backgroundColor: dark ? Color(0xFF1A1A2E) : Colors.white,
      boxShadow: !dark
          ? const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ]
          : [],
      child: child,
    );
  }
}
