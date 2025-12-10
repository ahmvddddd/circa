// import '../../../utils/helpers/helper_function.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import '../../../common/custom_shapes.dart/containers/rounded_container.dart';
// import '../../../utils/constants/custom_colors.dart';
// import '../../../utils/constants/sizes.dart';

// class SignInPage extends StatefulWidget {
//   const SignInPage({super.key});

//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> {
//   bool obscurePass = true;

//   @override
//   Widget build(BuildContext context) {
//     final dark = HelperFunction.isDarkMode(context);
//     return Scaffold(
//       // backgroundColor: const Color(0xFF0D0F13),
//       body: Expanded(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(Sizes.spaceBtwItems),
//           child: Center(
//             child: RoundedContainer(
//               width: 400,
//               padding: const EdgeInsets.all(Sizes.spaceBtwItems),
//               backgroundColor: dark ? Color(0xFF1A1A2E) : Color(0xFF1A1A2E).withValues(alpha: 0.1),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const SizedBox(height: 20),
            
//                   /// LOGO + TITLE
//                   Text(
//                     "Welcome Back",
//                     style: Theme.of(context).textTheme.headlineSmall
//                   ),
            
//                   const SizedBox(height: 6),
            
//                   Text(
//                     "Login to manage your group transactions.",
//                     style: Theme.of(context).textTheme.bodySmall
//                   ),
            
//                   const SizedBox(height: 32),
            
//                   /// EMAIL
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Email or Username",
//                       style: Theme.of(context).textTheme.labelLarge,
//                     ),
//                   ),
//                   const SizedBox(height: 6),
//                   _inputField("you@example.com"),
            
//                   const SizedBox(height: Sizes.spaceBtwItems),
            
//                   /// PASSWORD
//                   const Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Password",
//                       style: TextStyle(color: Color(0xFF8A8F98), fontSize: 13),
//                     ),
//                   ),
//                   const SizedBox(height: Sizes.sm),
//                   TextField(
//                     obscureText: obscurePass,
//                     style: Theme.of(context).textTheme.labelSmall,
//                     decoration: InputDecoration(
//                       hintText: "Enter your password",
//                       hintStyle: Theme.of(context).textTheme.labelSmall,
//                       filled: true,
//                       fillColor: const Color(0xFF1A1D22),
//                       suffixIcon: IconButton(
//                         icon: Icon(
//                           obscurePass ? Icons.visibility_off : Icons.visibility,
//                           color: Colors.grey,
//                         ),
//                         onPressed: () =>
//                             setState(() => obscurePass = !obscurePass),
//                       ),
//                       border: _border(),
//                       enabledBorder: _border(),
//                       focusedBorder: _activeBorder(),
//                     ),
//                   ),
            
//                   const SizedBox(height: Sizes.spaceBtwItems),
            
//                   /// FORGOT PASSWORD
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Text(
//                       "Forgot Password?",
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                   ),
            
//                   const SizedBox(height: 25),
            
//                   /// LOGIN BUTTON
//                   Align(
//                     alignment: Alignment.center,
//                     child: SizedBox(
//                       width: 300,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: CustomColors.primary,
//                           padding: const EdgeInsets.all(Sizes.sm),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(Sizes.cardRadiusSm),
//                           ),
//                         ),
//                         onPressed: () {},
//                         child: Text(
//                           "Login",
//                           style: Theme.of(context).textTheme.labelSmall!.copyWith(
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
            
//                   const SizedBox(height: Sizes.spaceBtwItems),
            
//                   /// OR DIVIDER
//                   Row(
//                     children:  [
//                       Expanded(child: Divider()),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 10),
//                         child: Text(
//                           "OR",
//                           style: Theme.of(context).textTheme.bodySmall,
//                         ),
//                       ),
//                       Expanded(child: Divider()),
//                     ],
//                   ),
            
//                   const SizedBox(height: Sizes.spaceBtwItems),
            
//                   /// SIGN UP TEXT
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Don't have an account? ",
//                         style: Theme.of(context).textTheme.bodySmall,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           context.go('/signup');
//                         },
//                         child: Text(
//                           "Sign Up",
//                           style: Theme.of(context).textTheme.labelMedium!
//                               .copyWith(color: CustomColors.primary),
//                         ),
//                       ),
//                     ],
//                   ),
            
//                   const SizedBox(height: Sizes.spaceBtwItems),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

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
//         focusedBorder: _activeBorder(),
//       ),
//     );
//   }

//   OutlineInputBorder _border() => OutlineInputBorder(
//     borderRadius: BorderRadius.circular(6),
//     borderSide: const BorderSide(color: Color(0xFF2A2F36)),
//   );

//   OutlineInputBorder _activeBorder() => OutlineInputBorder(
//     borderRadius: BorderRadius.circular(6),
//     borderSide: const BorderSide(color: Color(0xFF1DA1F2)),
//   );
// }
