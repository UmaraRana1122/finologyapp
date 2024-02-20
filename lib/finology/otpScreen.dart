import 'package:finologyapp/widget/textfeildotp.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: must_be_immutable
class OTPScreen extends StatefulWidget {
  String verificationId;

  OTPScreen({Key? key, required this.verificationId}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  List<TextEditingController> otpController =
      List.generate(6, (_) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    size: 3.h,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              // Image.asset(
              //   'assets/images/food.png',
              //   height: 15.h,
              // ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Verification',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          6,
                          (index) =>
                              textFieldOTP(context, otpController[index])),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Center(
                      child: Container(
                        height: 7.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff46F889),
                              Color(0xff15BE77),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                          ),
                        ),
                        child: Align(
                          child: Text(
                            'Verify',
                            style: TextStyle(
                                fontSize: 17.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff15BE77),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Center(
//                       child: InkWell(
//                         onTap: () 
//                         async {
//                           try {
//                             String enteredOTP = otpController
//                                 .map((controller) => controller.text)
//                                 .join();

//                             PhoneAuthCredential credential =
//                                 PhoneAuthProvider.credential(
//                               verificationId: widget.verificationId,
//                               smsCode: enteredOTP,
//                             );

//                             await FirebaseAuth.instance
//                                 .signInWithCredential(credential)
//                                 .then((value) {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => OTPRegisterScreen(),
//                                 ),
//                               );
//                             });
//                           } catch (ex) {
//                             print(ex.toString());
//                           }
//                         },
//                         child: Container(
//                           height: 7.h,
//                           width: 100.w,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                               colors: [
//                                 Color(0xff46F889),
//                                 Color(0xff15BE77),
//                               ],
//                               begin: Alignment.topLeft,
//                               end: Alignment.topRight,
//                             ),
//                           ),
//                           child: Align(
//                             child: Text(
//                               'Verify',
//                               style: TextStyle(
//                                   fontSize: 17.sp,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
