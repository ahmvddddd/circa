// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import '../../../common/custom_shapes.dart/containers/rounded_container.dart';
// import '../../../utils/constants/custom_colors.dart';
// import '../../../utils/constants/sizes.dart';
// import '../../../utils/helpers/helper_function.dart';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   bool obscurePass = true;
//   bool obscureConfirm = true;

//   @override
//   Widget build(BuildContext context) {
//     final dark = HelperFunction.isDarkMode(context);
//     return Scaffold(
//       backgroundColor: const Color(0xFF0D0F13),
//       body: Expanded(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(Sizes.spaceBtwItems),
//             child: Center(
//               child: RoundedContainer(
//                     width: 400,
//                     padding: const EdgeInsets.all(Sizes.spaceBtwItems),
//                     backgroundColor: dark ? Color(0xFF1A1A2E) : Colors.black.withValues(alpha: 0.1),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const SizedBox(height: Sizes.spaceBtwItems),
                
//                     /// TOP TITLE
//                     Text(
//                       "Create Your Account",
//                       style: Theme.of(context).textTheme.headlineSmall
//                     ),
                
//                     const SizedBox(height: Sizes.sm),
                
//                     Text(
//                       "Manage group transactions and withdrawals with ease.",
//                       textAlign: TextAlign.center,
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
                
//                     const SizedBox(height: Sizes.spaceBtwSections),
                
//                     /// FULL NAME
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "Full Name",
//                         style: Theme.of(context).textTheme.bodySmall,
//                       ),
//                     ),
//                    const SizedBox(height: Sizes.sm),
//                     _inputField("Enter your full name"),
                
//                    const SizedBox(height: Sizes.spaceBtwItems),
                
//                     /// EMAIL
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "Email",
//                         style: Theme.of(context).textTheme.bodySmall,
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     _inputField("you@example.com"),
                
//                     const SizedBox(height: 18),
                
//                     /// PASSWORD
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "Password",
//                         style: Theme.of(context).textTheme.bodySmall
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     TextField(
//                       obscureText: obscurePass,
//                       style: const TextStyle(color: Colors.white),
//                       decoration: InputDecoration(
//                         hintText: "Enter your password",
//                         hintStyle: const TextStyle(color: Color(0xFF6C7078)),
//                         filled: true,
//                         fillColor: const Color(0xFF1A1D22),
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             obscurePass ? Icons.visibility_off : Icons.visibility,
//                             color: Colors.grey,
//                           ),
//                           onPressed: () => setState(() => obscurePass = !obscurePass),
//                         ),
//                         border: _border(),
//                         enabledBorder: _border(),
//                         focusedBorder: _borderActive(),
//                       ),
//                     ),
                
//                     const SizedBox(height: 18),
                
//                     /// CONFIRM PASSWORD
//                     const Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         "Confirm Password",
//                         style: TextStyle(
//                           color: Color(0xFF8A8F98),
//                           fontSize: 13,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 6),
//                     TextField(
//                       obscureText: obscureConfirm,
//                       style: const TextStyle(color: Colors.white),
//                       decoration: InputDecoration(
//                         hintText: "Confirm your password",
//                         hintStyle: const TextStyle(color: Color(0xFF6C7078)),
//                         filled: true,
//                         fillColor: const Color(0xFF1A1D22),
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             obscureConfirm ? Icons.visibility_off : Icons.visibility,
//                             color: Colors.grey,
//                           ),
//                           onPressed: () =>
//                               setState(() => obscureConfirm = !obscureConfirm),
//                         ),
//                         border: _border(),
//                         enabledBorder: _border(),
//                         focusedBorder: _borderActive(),
//                       ),
//                     ),
                
//                     const SizedBox(height: 28),
                
//                     /// SIGN UP BUTTON
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: CustomColors.primary,
//                           padding: const EdgeInsets.symmetric(vertical: 14),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(6),
//                           ),
//                         ),
//                         onPressed: () {
//                           context.go('/mygroups');
//                         },
//                         child:  Text(
//                           "Sign Up",
//                           style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white)
//                         ),
//                       ),
//                     ),
                
//                     const SizedBox(height: 16),
                
//                     /// SIGN IN REDIRECT
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children:  [
//                         Text(
//                           "Already have an account? ",
//                           style: Theme.of(context).textTheme.bodySmall
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             context.go('/signin');
//                           },
//                           child: Text(
//                             "Sign In",
//                             style: Theme.of(context).textTheme.labelMedium!.copyWith(color: CustomColors.primary)
//                           ),
//                         ),
//                       ],
//                     ),
                
//                     const SizedBox(height: 20),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   /// REUSABLE INPUT
//   Widget _inputField(String hint) {
//     return TextField(
//       style: const TextStyle(color: Colors.white),
//       decoration: InputDecoration(
//         hintText: hint,
//         hintStyle: const TextStyle(color: Color(0xFF6C7078)),
//         filled: true,
//         fillColor: const Color(0xFF1A1D22),
//         border: _border(),
//         enabledBorder: _border(),
//         focusedBorder: _borderActive(),
//       ),
//     );
//   }

//   OutlineInputBorder _border() => OutlineInputBorder(
//         borderRadius: BorderRadius.circular(6),
//         borderSide: const BorderSide(color: Color(0xFF2A2F36)),
//       );

//   OutlineInputBorder _borderActive() => OutlineInputBorder(
//         borderRadius: BorderRadius.circular(6),
//         borderSide: const BorderSide(color: Color(0xFF1DA1F2)),
//       );
// }
