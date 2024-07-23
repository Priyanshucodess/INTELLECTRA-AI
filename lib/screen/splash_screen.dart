import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intellectra_ai/helper/global.dart';
import 'package:intellectra_ai/helper/pref.dart';
import 'package:intellectra_ai/screen/home_screen.dart';
import 'package:intellectra_ai/screen/onboarding_screen.dart';
import 'package:intellectra_ai/widget/custom_loading.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    //  wait for some time for splash then move to HomeScreen
     Future.delayed(Duration(seconds: 3),(){
    //   Navigator.of(context).pushReplacement(
    //      MaterialPageRoute(builder: (_)=> Pref.showOnboarding? const OnboardingScreen()
    //      : const HomeScreen()));

       Get.off(()=>
        Pref.showOnboarding? const OnboardingScreen()  : const HomeScreen());
    });

  }
  @override
  Widget build(BuildContext context) {
    
    // initializing device size
    mq =MediaQuery.sizeOf(context);
    
    return  Scaffold(
      body: SizedBox(
        width: double.maxFinite,

        child: Column(
          children: [
            Spacer(flex: 2,),
            Card(
              color: Colors.orange,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(150))),
              child: Padding(
                padding:  EdgeInsets.all(mq.width*.09),
                child: Image.asset('assets/images/logo.png',width: mq.width*.45,),
              ),
            ),
            // spacer will make them spaced 
            Spacer(),
            CustomLoading(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Developed by Priyanshu Saraswat',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            ),
            
          ],
        ),
      ),
    );
  }
}
