// import 'package:flutter/material.dart';

// class AppTextfeild extends StatelessWidget {
//   const AppTextfeild({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF2F4F7),

// body: Padding(
//   padding: const EdgeInsets.all(16),
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.all(16),
// child: Container(
//        constraints: const BoxConstraints(maxWidth: 420),
//        decoration: BoxDecoration(
//        color: Colors.white,
//         borderRadius: BorderRadius.circular(32),
//          boxShadow: [
//  BoxShadow(
//        color: Colors.black12,
//        blurRadius: 18,
//         offset: Offset(0, 10),
//           ),
//                 ],
//               ),
// child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//                    children: [
// Container(
//            padding: const EdgeInsets.all(24),
//            decoration: const BoxDecoration(
              
//                       color: Color(0xFF2C522E),
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(32),
//                         topRight: Radius.circular(32),
//                       ),
//                     ),
//         //container  sign in to your home 
// child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Icon(Icons.home, color: Colors.white, size: 28),
//              SizedBox(height: 16),
//                        Text(
//                           'Welcome back',
//                           style: TextStyle(color: Colors.white70, fontSize: 16),
//                         ),
//              SizedBox(height: 8),
//                      Text(
//                      'Sign in to your home',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//     Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
//         child: Column(
//            children: [
//             dataField('Email address', Icons.email, false),
//              const SizedBox(height: 16),
//             dataField('Password', Icons.lock, true),
//                         const SizedBox(height: 12),
//       Container(
//         alignment: Alignment.centerRight,
//             child: TextButton(
//                onPressed: () {},
//                    child: const Text(
//                      'Forgot password?',
//                         style: TextStyle(color: Color(0xFF2C522E)),
//                             ),
//                           ),
                
                
//                         ),
//          const SizedBox(height: 16  ),
//                         appButton('Sign in'),
//                         // Row(
//                         //    Icon(icon, color: Colors.white),
//                         // ),
//          const SizedBox(height: 20),
//                         const Text(
//                           'or continue with',
//                           style: TextStyle(color: Color.fromARGB(136, 0, 0, 0)),
//                         ),
      
      
      
      
//          const SizedBox(height: 16),




//                  Row(
//                           children: [
//                             Expanded(child: socialButton('Google', Icons.search)),
//                             const SizedBox(width: 12),
//                             Expanded(child: socialButton('Apple', Icons.apple)),
//                           ],
//                         ),
//          const SizedBox(height: 24),
//                 Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const Text('Don\'t have an account? '),
//                             TextButton(
//                               onPressed: () {},
//                               child: const Text('Sign Up'),
//                             ),
//                           ],
//                     ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget dataField(String label, IconData icon, bool obscureText) {
//     return TextField(
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         prefixIcon: Icon(icon, color: const Color(0xFF2C522E)),
//         labelText: label,
//         filled: true,
//         fillColor: const Color(0xFFF8F9FB),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(16),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }

//   Widget appButton(String buttonName) {
//     return SizedBox(
//       width: double.infinity,
//       height: 52,
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ElevatedButton.styleFrom(
        
//           backgroundColor: const Color(0xFF2C522E),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//           ),
//           textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      
       
//         ),
        
//         child: Text(buttonName),
//       ),
//     );
//   }

//   Widget socialButton(String label, IconData icon) {
//     return OutlinedButton.icon(
//       onPressed: () {},
//       icon: Icon(icon, color: const Color(0xFF2C522E)),
//       label: Text(label, style: const TextStyle(color: Color(0xFF2C522E))),
//       style: OutlinedButton.styleFrom(
//         side: const BorderSide(color: Color(0xFF2C522E)),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//         padding: const EdgeInsets.symmetric(vertical: 14),
//       ),
//     );
//   }
// }
