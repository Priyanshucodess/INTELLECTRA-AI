import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intellectra_ai/helper/global.dart';
import 'package:intellectra_ai/model/onboard.dart';
import 'package:intellectra_ai/screen/home_screen.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
     
    final c= PageController();


    final list =[
      // onboarding 1
    Onboard(title: 'Ask me Anything', subtitle: 'Unleash your curiosity! Let us dive into the world of knowledge together.', 
    lottie: 'ai_ask_me'),
       
      //  onboarding 2
     Onboard(title: 'Imagination to Reality', 
     subtitle: 'Just Imagine anything & let me know, I will create something wonderful for you.', 
     lottie: 'ai_2'), 



    ];



    return Scaffold(
      body: PageView.builder(
        controller: c,
        itemCount: list.length,
        itemBuilder:(ctx, ind) {
        
        return Column(
        children: [
          Lottie.asset('assets/lottie/${list[ind].lottie}.json',
          height: mq.height* .6),
          
          // title

          Text('Ask me Anything',
          style: TextStyle(
            fontSize: 18,fontWeight: FontWeight.w900,letterSpacing: 0.5
          ),),
          
          // adding some space btw text
          SizedBox(height: mq.height* .015,),

          SizedBox(
            width: mq.width*.7,
            child: Text('Unleash your curiosity! Let us dive into the world of knowledge together.',
            textAlign: TextAlign.center,
            style:TextStyle(fontSize: 13.5,letterSpacing: .5,color: Colors.black54),),
          ),
             
            Spacer(), 

          Wrap(
            spacing: 10,
            children: List.generate(
                list.length,
               (i) => Container(
              width: i== ind ? 15:10,
              height: 8,decoration: BoxDecoration(
                color:i == ind ?Colors.blue: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5))),)),
            ),

            Spacer(),

            ElevatedButton(
              style: ElevatedButton.styleFrom(shape: StadiumBorder(),elevation: 0,minimumSize: Size(mq.width* .4, 50),backgroundColor: Colors.blue),
              onPressed: (){
                  
                  if(ind==list.length-1){
                       
                       Get.off(()=> const HomeScreen());
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const HomeScreen()));
                  }
                  else{
                        c.nextPage(duration: Duration(milliseconds: 600), curve: Curves.ease,);
                  }
                 

              }, child: Text(
                ind==list.length-1?'Finish':
                'Next',
              style: TextStyle( fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),)),
               
              Spacer(flex: 2,),

        ],
      );
      },)
    );
  }
}