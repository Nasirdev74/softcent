import 'package:Softcent/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'ar.dart';
import 'en.dart';

enum AppLocale {
  EN,
  AR,
}

List<Languages> get appLanguages=>[
  Languages(
      name: 'Arabic',
      locale: AppLocale.AR,
      key: 'ar'
  ),
  Languages(
      name: 'English',
      locale: AppLocale.EN,
      key: 'en'
  ),
];

class LocaleHelper{

  static getAllLocale(){
    return [
      const Locale('en', 'US'),
      const Locale('ar', 'UAE'),
    ];
  }

  static String getKey(AppLocale locale){
    switch(locale){
      case AppLocale.EN:
        return "en";
      case AppLocale.AR:
        return "ar";
      default:
        return AppConstant.defaultLanguage;
    }
  }

  static AppLocale getLocale(String key){
    switch(key){
      case "en":
        return AppLocale.EN;
      case "ar":
        return AppLocale.AR;
      default:
        return AppConstant.defaultLocale;
    }
  }

  static setLanguage(AppLocale locale){
    switch(locale){
      case AppLocale.EN:
        EN();
        return null;
      case AppLocale.AR:
        AR();
        return null;
      default:
        AppConstant.defaultLanguageFunction;
        return null;
    }
  }
}

class Languages{
  String name,key;
  AppLocale locale;
  Languages({required this.name, required this.locale,required this.key});
}
