import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:intellectra_ai/helper/global.dart';
import 'package:intellectra_ai/model/home_type.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {
  final HomeType homeType;

  const HomeCard({super.key, required this.homeType});

  @override
  Widget build(BuildContext context) {
     
     Animate.restartOnHotReload=true;

    return InkWell(
      onTap: homeType.onTap,
      child: Card(
        color: Colors.blue.withOpacity(.2),
        elevation: 0,
        
        margin: EdgeInsets.only(bottom: mq.height * .01),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
        child:
         Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: [Lottie.asset('assets/lottie/${homeType.lottie}',
         width: homeType.width ),
    
         Spacer(),
    
         Text(homeType.title
         ,style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,letterSpacing: .7),),
          Spacer(flex: 2,),
          ],
          ),
          ).animate().scale(duration: NumDurationExtensions(600).milliseconds),
    );
  }
}
