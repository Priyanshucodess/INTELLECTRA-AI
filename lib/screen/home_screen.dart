import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:intellectra_ai/helper/global.dart';
import 'package:intellectra_ai/helper/pref.dart';
import 'package:intellectra_ai/model/home_type.dart';
import 'package:intellectra_ai/widget/home_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnboarding=false;
  }
  @override
  Widget build(BuildContext context) {
    
    // initializing device size
    mq =MediaQuery.sizeOf(context);

    
    
    return  Scaffold(
    // app bar
    appBar: AppBar(
      elevation: 1,
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(appName,
      style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w500),
      ),
      // brightness change button
      
      actions: [
        IconButton(
          padding: EdgeInsets.only(right: 16),
          onPressed: (){}, icon: Icon(Icons.brightness_4_rounded),color: Colors.blue,
      iconSize: 26,
      )
      ],
    ),


      // body
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: mq.width * .04,vertical: mq.height* .015),
          children: HomeType.values.map((e) => HomeCard(homeType: e,)).toList(),
        ),
      ),
    );
  }
}
