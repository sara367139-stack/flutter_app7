import 'package:flutter/material.dart';
//import 'package:flutter_application_1/features/home/screen/home_screen.dart';
import 'package:flutter_application_1/features/home/screen/scaroll.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 // int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        centerTitle: true,
      //  title: const Text('Sign in to your home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
       const SizedBox(height: 40),

Container(
  width: 90,
  height: 90,
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(25),
  ),
  child: const Icon(
    Icons.show_chart,
    color: Colors.white,
    size: 45,
  ),
),

const SizedBox(height: 25),

const Text(
  "Sport Shop",
  style: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 8),

const Text(
  "Welcome back! Please login.",
  style: TextStyle(
    color: Colors.grey,
    fontSize: 18,
  ),
),

const SizedBox(height: 40),

// email
TextField(
  decoration: InputDecoration(
    hintText: 'student@flutter.dev',
    prefixIcon: const Icon(Icons.email_outlined),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
),

// password

const SizedBox(height: 20),

TextField(
  obscureText: true,
  decoration: InputDecoration(
    hintText: 'Password',
    prefixIcon: const Icon(Icons.lock_outline),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
),

//forget pass
const SizedBox(height: 12),

Align( // وظيفته تحديد مكان الـ Widget.
  alignment: Alignment.centerRight, //منتصف الارتفاع لكن على يمين الشاشة.
  child: TextButton(
    onPressed: () {},
    child: const Text("Forgot Password?"),
  ),
),


const SizedBox(height: 20),
// login
SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton(
    onPressed: () {

     Navigator.pushReplacement( //عشان ميرجعش لنفس الصفحه تاني 
        context,
        MaterialPageRoute( // اسلوب الانتقال 
          builder: (context) => const Scaroll(),
        ),
      );


    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    child: const Text(
      'Login',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
    ),
  ),
),



const SizedBox(height: 16),
// create Account
SizedBox(
  width: double.infinity,
  height: 55,
  child: OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      side: const BorderSide(
        color: Colors.blue,
      ),
    ),
    child: const Text(
      'Create Account',
      style: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
    ),
  ),
),



          ],
        ),
      ),
    );
  }

}
  // Widget datafield(String label, {IconData? icon, bool obscure = false}) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 20),
  //     child: TextField(
  //       obscureText: obscure,
  //       decoration: InputDecoration(
  //         labelText: label,
  //         prefixIcon: icon != null ? Icon(icon) : null,
  //         border: const OutlineInputBorder(),
  //       ),
  //     ),
  //   );
  // }

  // Widget appButton(String buttonName) {
  //   return GestureDetector(
  //     onTap: () {},
  //     child: Container(
  //       decoration: BoxDecoration(
  //         color: const Color.fromARGB(255, 138, 88, 129),
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //       height: 50,
  //       width: 360,
  //       child: Center(
  //         child: Text(
  //           buttonName,
  //           style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  //         ),
  //       ),
  //     ),
  //   );
  // }
