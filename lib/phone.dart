
import 'package:flutter/material.dart';
import 'package:transcribo/Function/auth_function.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  static String verify="";

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password= '';
  String username = '';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Transcribo'),
      ),
      body: Form(
        key: _formkey,
        child: Container(

          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             !isLogin? TextFormField(
                key: const ValueKey('username'),
                decoration: const InputDecoration(hintText: "Enter Username"),

                validator: (value){
                  if(value.toString().length<3){
                    return 'Username is so small';
                  }
                  else{
                    return null;
                  }
                },
               onSaved: (value){
                  setState(() {
                    username = value!;
                  });
               },
             ):Container(),
             TextFormField(
              key: const ValueKey('email'),
              decoration: const InputDecoration(hintText: "Enter Email"),
                validator: (value){
                  if(!(value.toString().contains('@'))){
                    return 'Invalid Email';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: const ValueKey('password'),
                decoration: const InputDecoration(hintText: "Enter Password"),
                validator: (value){
                  if(value.toString().length<8){
                    return 'Password is so small';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (value){
                  setState(() {
                    password = value!;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: (){
                        if(_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
                          isLogin?signin(email, password): signup(email, password);
                          Navigator.pushNamed(context, 'speech_screen');
                        }
                      },
                      child:isLogin?const Text('Login'): const Text('Signup'))),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: (){
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? const Text("Don't have an account? Signup")
                      : const Text('Already Signed Up? Login')),

            ],
          ),

        ),
      ),
    );
  }
  }

//   TextEditingController countryController = TextEditingController();
//   // TextEditingController phoneController = TextEditingController();
//   var phone="";
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     countryController.text = "+88";
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: const EdgeInsets.only(left: 25, right: 25),
//         alignment: Alignment.center,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/img1.png',
//                 width: 150,
//                 height: 150,
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               const Text(
//                 "Phone Verification",
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 "We need to register your phone without getting started!",
//                 style: TextStyle(
//                   fontSize: 16,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 55,
//                 decoration: BoxDecoration(
//                     border: Border.all(width: 1, color: Colors.grey),
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     SizedBox(
//                       width: 40,
//                       child: TextField(
//                         controller: countryController,
//                         keyboardType: TextInputType.number,
//                         decoration: const InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     const Text(
//                       "",
//                       style: TextStyle(fontSize: 33, color: Colors.grey),
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                    Expanded(
//                         child: TextField(
//                           keyboardType: TextInputType.phone,
//                           onChanged: (value){
//                             phone=value;
//                           },
//                           // controller: phoneController,
//                           decoration: const InputDecoration(
//                             border: InputBorder.none,
//                             hintText: "Phone",
//                           ),
//                         ))
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 height: 45,
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green.shade600,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10))),
//                     onPressed: () async {
//                       try{
//                         await FirebaseAuth.instance.verifyPhoneNumber(
//                           phoneNumber: '+88$phone',
//                           //   phoneNumber: '${countrycode.text + phone}',
//                           verificationCompleted: (PhoneAuthCredential credential) {},
//                           verificationFailed: (FirebaseAuthException e) {},
//                           codeSent: (String verificationId, int? resendToken) {
//                             MyPhone.verify = verificationId;
//                             Navigator.pushNamed(context, 'otp');
//
//                           },
//                           codeAutoRetrievalTimeout: (String verificationId) {},
//
//                         );
//                         // print(phone);
//                       }
//                       catch(e){
//                         // print(e.toString());
//                       }
//                       // var countrycode;
//
//                       // Navigator.pushNamed(context, 'otp');
//                     },
//                     child: const Text("Send the code")),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
