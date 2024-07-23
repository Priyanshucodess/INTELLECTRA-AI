import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intellectra_ai/feature/chatbot_feature.dart';

import 'package:intellectra_ai/helper/global.dart';
import 'package:intellectra_ai/imageGenrator/home.dart';

enum HomeType{AIChatBot, AIImage}


extension MyHomeType on HomeType{
//  title names of HomeCards
  String get title => switch(this){
    
    // TODO: Handle this case.
    HomeType.AIChatBot => 'AI ChatBot',
    // TODO: Handle this case.
    HomeType.AIImage => 'AI Image Generator',
    // TODO: Handle this case.
    // HomeType.AITranslator => 'Language Translator',
  };
  // Lottie on HomeCards
  String get lottie => switch(this){
    
    // TODO: Handle this case.
    HomeType.AIChatBot => 'ai_waving.json',
    // TODO: Handle this case.
    HomeType.AIImage => 'ai_2.json',
    // TODO: Handle this case.
    // HomeType.AITranslator => 'ai_ask_me.json',
  };

  // width of lottie
   double get width => switch(this){
    
    // TODO: Handle this case.
    HomeType.AIChatBot => mq.width *.35,
    // TODO: Handle this case.
    HomeType.AIImage => mq.width *.40,
    // TODO: Handle this case.
    // HomeType.AITranslator => mq.width *.35,
  };

  // nevigation of card
  VoidCallback? get onTap => switch (this){
    
    // TODO: Handle this case.
    HomeType.AIChatBot => ()=>Get.to(()=> ChatBotFeature()),
    
    
    // TODO: Handle this case.
    HomeType.AIImage => ()=>Get.to(()=> HomePage()),
    // TODO: Handle this case.
    // HomeType.AITranslator => null,
  };
}