// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class MyRegister extends StatefulWidget {
//   const MyRegister({Key? key}) : super(key: key);
//
//   @override
//   _MyRegisterState createState() => _MyRegisterState();
// }
//
// class _MyRegisterState extends State<MyRegister> {
//        late TextEditingController _emailController;
//        late TextEditingController _passwordController;
//        // TextEditingController emailController = TextEditingController();
//        // TextEditingController passwordController = TextEditingController();
//
//        @override
//        void initState() {
//          super.initState();
//          _emailController = TextEditingController();
//          _passwordController = TextEditingController();
//        }
//
//        @override
//        void dispose() {
//          _emailController.dispose();
//          _passwordController.dispose();
//          super.dispose();
//        }
//
//        Future<void> signUpWithEmailAndPassword(String email, String password) async {
//          try {
//            await FirebaseAuth.instance.createUserWithEmailAndPassword(
//              email: email,
//              password: password,
//            );
//            // Registration successful, you can add further logic here
//            print('User registered successfully');
//          } catch (e) {
//            // Handle registration errors, you can display an error message
//            print('Error during registration: $e');
//          }
//        }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
//   @override
//   Widget build(BuildContext context) {
//     var _passwordController;
//     var _emailController;
//     return Container(
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage('assets/register.png'), fit: BoxFit.cover),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         body: Stack(
//           children: [
//             Container(
//               padding: const EdgeInsets.only(left: 35, top: 30),
//               child: const Text(
//                 'Create\nAccount',
//                 style: TextStyle(color: Colors.white, fontSize: 33),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.28),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(left: 35, right: 35),
//                       child: Column(
//                         children: [
//                           TextField(
//                             style: const TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: const BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: const BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 hintText: "Name",
//                                 hintStyle: const TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           TextField(
//                               controller: _emailController,
//                             style: const TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: const BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: const BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 hintText: "Email",
//                                 hintStyle: const TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//
//                           TextField(
//                             controller: _passwordController,
//                             style: const TextStyle(color: Colors.white),
//                             obscureText: true,
//                             decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: const BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: const BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 hintText: "Password",
//                                 hintStyle: const TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                   onPressed: () async {
//                                     // Call the registration function with entered email and password
//                                      _MyRegisterState (
//                                       _emailController.text,
//                                       _passwordController.text,
//                                     );
//                                   },
//                                child: const Text(
//                                 'Sign Up',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 27,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                               child: CircleAvatar(
//                                 radius: 30,
//                                 backgroundColor: const Color(0xff4c505b),
//                                 child: IconButton(
//                                     color: Colors.white,
//                                     onPressed: () {
//                                       Navigator.pushNamed(context, 'phone');
//                                     },
//                                     icon: const Icon(
//                                       Icons.arrow_forward,
//                                     )),
//                               ),
//                               ),
//                                 ],
//                           ),
//                           const SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.pushNamed(context, 'login');
//                                 },
//                                 style: const ButtonStyle(),
//                                 child: const Text(
//                                   'Sign In',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                       decoration: TextDecoration.underline,
//                                       color: Colors.white,
//                                       fontSize: 18),
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }