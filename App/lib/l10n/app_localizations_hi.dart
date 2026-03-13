// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appNameLauncher => 'मेरे साथ रहें - (बुजुर्ग)';

  @override
  String get splashTitle => 'मेरे साथ रहें';

  @override
  String get splashElders => '(बुजुर्ग)';

  @override
  String get welcomeDeviceIdLabel => 'डिवाइस ID:';

  @override
  String get welcomeRoleGuardian => 'मैं अभिभावक हूं';

  @override
  String get welcomeRoleElderlyWithGuardian =>
      'मैं बुजुर्ग हूं और\nमेरे पास अभिभावक है';

  @override
  String get welcomeRoleElderlyNoGuardian =>
      'मैं बुजुर्ग हूं और\nमेरे पास अभिभावक नहीं है';

  @override
  String get welcomeContinue => 'जारी रखें';

  @override
  String get welcomeDisclaimerPrefix => 'जारी रखें पर क्लिक करके, आप हमारी ';

  @override
  String get welcomeTermsOfService => 'सेवा की शर्तें';

  @override
  String get welcomeDisclaimerAnd => ' और ';

  @override
  String get welcomePrivacyPolicy => 'गोपनीयता\nनीति';

  @override
  String get dialogOk => 'ठीक है';

  @override
  String get dialogCancel => 'रद्द करें';

  @override
  String get dialogBack => 'वापस';

  @override
  String get dialogNext => 'अगला';

  @override
  String get suggestGuardianRegisterFirst =>
      'कृपया पहले अपने अभिभावक से पंजीकरण करवाएं।';

  @override
  String get pleaseSelectAvatar => 'कृपया एक अवतार चुनें।';

  @override
  String get nameLabel => 'नाम';

  @override
  String get relationshipLabel => 'संबंध';

  @override
  String get yesIAgree => 'हां, मैं सहमत हूं';

  @override
  String get guardianHelloSentence =>
      'नमस्ते,\n\nआपसे मिलकर अच्छा लगा!\nमुझे खुशी है कि अब से मैं आपका साथ दूंगा।\nमैं अपना परिचय देना चाहता हूं।\nमैं वह अभिभावक हूं जो आपके प्रियजन की देखभाल में आपकी मदद करेगा।\n\nएक सहायक अभिभावक बनने के लिए,\nमुझे आप और आपके प्रियजन के बारे में कुछ प्रश्नों के उत्तर देने के लिए आपकी मदद चाहिए।\nकृपया अगले चरण में जाने से पहले तैयार रहें।\n\nमुझे आपकी सेवा का अवसर देने के लिए धन्यवाद!';

  @override
  String get nonGuardianHelloSentence =>
      'नमस्ते,\n\nआपसे मिलकर अच्छा लगा!\nमैं वह अभिभावक हूं जो अब से आपका साथ दूंगा।\nकृपया कुछ प्रश्नों के उत्तर दें ताकि मैं आपको अच्छी तरह जान सकूं और एक सहायक अभिभावक बन सकूं।\n\nकृपया अगले चरण में जाने से पहले तैयार रहें।\n\nमुझे आपकी सेवा का अवसर देने के लिए धन्यवाद!';

  @override
  String get guardianQA1 => 'कृपया आपका नाम क्या है?';

  @override
  String get guardianQA2 => 'आप और बुजुर्ग के बीच क्या संबंध है?';

  @override
  String get qa2ElderLabel => 'बुजुर्ग हैं:';

  @override
  String get qa2YouAreLabel => 'आप हैं:';

  @override
  String get qa2ElderDaddy => 'पिता';

  @override
  String get qa2ElderMommy => 'माँ';

  @override
  String get qa2ElderGrandpa => 'दादा';

  @override
  String get qa2ElderGrandma => 'दादी';

  @override
  String get qa2ElderOther => 'अन्य';

  @override
  String get qa2YouSon => 'बेटा';

  @override
  String get qa2YouDaughter => 'बेटी';

  @override
  String get qa2YouNephew => 'भतीजा/भांजा';

  @override
  String get qa2YouNiece => 'भतीजी/भांजी';

  @override
  String get qa2OtherHint => 'कृपया निर्दिष्ट करें';

  @override
  String get qa2OtherRequired => '\"अन्य\" चयनित होने पर कृपया मान दर्ज करें।';

  @override
  String guardianQA3(String elder) {
    return 'आपके $elder का नाम क्या है?';
  }

  @override
  String guardianQA4(String elder) {
    return 'आपके $elder का जन्मदिन कब है?';
  }

  @override
  String guardianQA5(String elder) {
    return 'मुझे बताएं कि आप चाहते हैं कि मैं आपके $elder की किस बात का ख्याल रखूं।';
  }

  @override
  String get guardianQA5DailyActivities => 'दैनिक गतिविधियाँ';

  @override
  String get guardianQA5Health => 'स्वास्थ्य';

  @override
  String get guardianQA5Done => 'पूर्ण';

  @override
  String get guardianQA5Breakfast => 'नाश्ता';

  @override
  String get guardianQA5Lunch => 'दोपहर का भोजन';

  @override
  String get guardianQA5Dinner => 'रात का खाना';

  @override
  String get guardianQA5Super => 'सुपर';

  @override
  String get guardianQA5DrinkWater => 'पानी पिएं';

  @override
  String get guardianQA5DoExercise => 'व्यायाम करें';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return 'क्या आपके $elder को दवा लेने की जरूरत है?';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return 'क्या आपके $elder को विटामिन/सप्लीमेंट लेने की जरूरत है?';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return 'कृपया बताएं यदि आपके $elder को जरूरत है';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure => 'ब्लड प्रेशर मापें';

  @override
  String get guardianQA5HealthCheckBloodSugar => 'ब्लड शुगर जांचें';

  @override
  String get guardianQA5HealthMonitorHeartRate => 'हृदय गति मॉनिटर करें';

  @override
  String get guardianQA5HealthCheckBodyTemp => 'शरीर का तापमान जांचें';

  @override
  String get guardianQA5HealthWeigh => 'वजन';

  @override
  String get guardianQA5HealthTrackSpO2 => 'ऑक्सीजन संतृप्ति (SpO2) ट्रैक करें';

  @override
  String guardianQA6(String elder) {
    return '$elder के शौक क्या हैं?';
  }

  @override
  String get guardianQA6ReadingBooks => 'किताबें पढ़ना';

  @override
  String get guardianQA6Writing => 'लिखना';

  @override
  String get guardianQA6ListeningToRadio => 'रेडियो सुनना';

  @override
  String get guardianQA6WatchingFilms => 'फिल्में देखना';

  @override
  String get guardianQA6Praying => 'प्रार्थना';

  @override
  String get guardianQA6Meditation => 'ध्यान';

  @override
  String get guardianQA6GrowingPlants => 'पौधे उगाना';

  @override
  String guardianQA7(String elder) {
    return 'क्या कोई व्यक्ति या चीज़ है जिसकी $elder को सबसे ज़्यादा परवाह है? यदि हाँ, तो कृपया मुझे बताएं।';
  }

  @override
  String guardianQA8(String elder) {
    return 'क्या आप $elder की दैनिक गतिविधियों की दैनिक रिपोर्ट प्राप्त करना चाहते हैं?';
  }

  @override
  String get guardianQA8Yes => 'हाँ';

  @override
  String get guardianQA8No => 'नहीं';

  @override
  String guardianQA9(String elder) {
    return 'मैं आपको सूचना भेजूंगा यदि आपके $elder ने इस समय के भीतर जवाब नहीं दिया';
  }

  @override
  String get guardianQA9OneHour => '1 घंटा';

  @override
  String get guardianQA9TwoHours => '2 घंटे';

  @override
  String get guardianQA9ThreeHours => '3 घंटे';

  @override
  String get guardianQA9Hours => 'घंटे';

  @override
  String get cameraAccessTitle => 'कैमरा एक्सेस';

  @override
  String get cameraAccessDeniedMessage =>
      'कैमरा एक्सेस अस्वीकार कर दिया गया। कैमरा उपयोग के लिए सेटिंग्स में सक्षम करें।';

  @override
  String get cameraAccessDeniedMessageQR =>
      'कैमरा एक्सेस अस्वीकार कर दिया गया। QR कोड स्कैन करने के लिए सेटिंग्स में सक्षम करें।';

  @override
  String get openSettings => 'सेटिंग्स खोलें';

  @override
  String suggestQA9DoneMessage(String elder) {
    return 'आप हमारे कम्युनिकेशन बोर्ड के ज़रिए $elder की गतिविधियां देख सकते हैं।';
  }

  @override
  String qaDoneMessage(String elder) {
    return 'आपके जवाब मिलने पर खुशी हुई।\nआपकी अनुपस्थिति के दौरान मैं आपके $elder का अच्छा संरक्षक बनने की पूरी कोशिश करूंगा।\nअगर और जानकारी चाहिए तो बता दूंगा।\nधन्यवाद।';
  }

  @override
  String get nonGuardianQA2 => 'आपका जन्मदिन कब है?';

  @override
  String get nonGuardianQA3 => 'आप चाहेंगे कि मैं आपको कैसे बुलाऊं?';

  @override
  String get nonGuardianQA4 =>
      'बताएं कि आप चाहते हैं कि मैं आपकी कैसे देखभाल करूं।';

  @override
  String get nonGuardianQA4HealthMedicineQuestion => 'दवा लेने की ज़रूरत है?';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion =>
      'विटामिन/फंक्शनल फूड लेने की ज़रूरत है?';

  @override
  String get nonGuardianQA4HealthNeedsHeading =>
      'कृपया बताएं अगर आपको ज़रूरत है';

  @override
  String get nonGuardianQA5 => 'क्या आपको नीचे दिए गए शौक में दिलचस्पी है?';

  @override
  String get nonGuardianQA6 =>
      'क्या आप चाहेंगे कि जरूरत पड़ने पर मैं किसी दोस्त या रिश्तेदार को फोन करूं या नोटिफिकेशन भेजूं?';

  @override
  String get qaNonDoneMessage =>
      'आपके जवाब मिलने पर खुशी हुई।\nमैं आपके लिए अच्छा संरक्षक बनने की पूरी कोशिश करूंगा।\nधन्यवाद।';
}
