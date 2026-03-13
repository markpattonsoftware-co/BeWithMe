// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appNameLauncher => 'Be With Me - (Elders)';

  @override
  String get splashTitle => 'Be With Me';

  @override
  String get splashElders => '(Elders)';

  @override
  String get welcomeDeviceIdLabel => 'Device ID:';

  @override
  String get welcomeRoleGuardian => 'I am the Guardian';

  @override
  String get welcomeRoleElderlyWithGuardian =>
      'I am the Elderly and\nhave a Guardian';

  @override
  String get welcomeRoleElderlyNoGuardian =>
      'I am the Elderly and\nhave no Guardian';

  @override
  String get welcomeContinue => 'Continue';

  @override
  String get welcomeDisclaimerPrefix =>
      'By clicking continue, you agree to\nour ';

  @override
  String get welcomeTermsOfService => 'Terms of Service';

  @override
  String get welcomeDisclaimerAnd => ' and ';

  @override
  String get welcomePrivacyPolicy => 'Privacy\nPolicy';

  @override
  String get dialogOk => 'OK';

  @override
  String get dialogCancel => 'Cancel';

  @override
  String get dialogBack => 'Back';

  @override
  String get dialogNext => 'Next';

  @override
  String get suggestGuardianRegisterFirst =>
      'Please have your Guardian to register it first.';

  @override
  String get pleaseSelectAvatar => 'Please select an avatar.';

  @override
  String get nameLabel => 'Name';

  @override
  String get relationshipLabel => 'Relationship';

  @override
  String get yesIAgree => 'Yes, I agree';

  @override
  String get guardianHelloSentence =>
      'Hello,\n\nNice to meet you!\nI\'m glad to accompany you from now on.\nI would like to introduce myself.\nI\'m the Guardian who will help you take care of your beloved relative.\n\nTo be able to become a helpful Guardian,\nI will need your help to answer a few questions about you and your relative.\nPlease be prepared before moving to the next step.\n\nThanks for your giving me a chance to serve you!';

  @override
  String get nonGuardianHelloSentence =>
      'Hello,\n\nNice to meet you!\nI\'m the Guardian who will accompany you from now on.\nPlease kindly answer a few questions to help me know about you well and become a helpful Guardian.\n\nPlease be prepared before moving to the next step.\n\nThanks for giving me a chance to serve you!';

  @override
  String get guardianQA1 => 'What is your name please?';

  @override
  String get guardianQA2 =>
      'What is the relationship between you and the elder?';

  @override
  String get qa2ElderLabel => 'The elderly is:';

  @override
  String get qa2YouAreLabel => 'You are :';

  @override
  String get qa2ElderDaddy => 'Daddy';

  @override
  String get qa2ElderMommy => 'Mommy';

  @override
  String get qa2ElderGrandpa => 'Grandpa';

  @override
  String get qa2ElderGrandma => 'Grandma';

  @override
  String get qa2ElderOther => 'Other';

  @override
  String get qa2YouSon => 'Son';

  @override
  String get qa2YouDaughter => 'Daughter';

  @override
  String get qa2YouNephew => 'Nephew';

  @override
  String get qa2YouNiece => 'Niece';

  @override
  String get qa2OtherHint => 'Please specify';

  @override
  String get qa2OtherRequired =>
      'Please enter a value when \"Other\" is selected.';

  @override
  String guardianQA3(String elder) {
    return 'What is your $elder\'s name?';
  }

  @override
  String guardianQA4(String elder) {
    return 'What is your $elder\'s birthday?';
  }

  @override
  String guardianQA5(String elder) {
    return 'Let me know what you want me to take care of your $elder about.';
  }

  @override
  String get guardianQA5DailyActivities => 'Daily Activities';

  @override
  String get guardianQA5Health => 'Health';

  @override
  String get guardianQA5Done => 'Done';

  @override
  String get guardianQA5Breakfast => 'Breakfast';

  @override
  String get guardianQA5Lunch => 'Lunch';

  @override
  String get guardianQA5Dinner => 'Dinner';

  @override
  String get guardianQA5Super => 'Super';

  @override
  String get guardianQA5DrinkWater => 'Drink Water';

  @override
  String get guardianQA5DoExercise => 'Do Exercise';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return 'Does your $elder need to take medicine?';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return 'Does your $elder need to take Vitamins/Functional foods?';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return 'Please let us know if your $elder needs to';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure => 'Measure blood pressure';

  @override
  String get guardianQA5HealthCheckBloodSugar => 'Check blood sugar levels';

  @override
  String get guardianQA5HealthMonitorHeartRate => 'Monitor heart rate';

  @override
  String get guardianQA5HealthCheckBodyTemp => 'Check body temperature';

  @override
  String get guardianQA5HealthWeigh => 'Weigh';

  @override
  String get guardianQA5HealthTrackSpO2 => 'Track oxygen saturation (SpO2)';

  @override
  String guardianQA6(String elder) {
    return 'What are $elder\'s hobbies?';
  }

  @override
  String get guardianQA6ReadingBooks => 'Reading Books';

  @override
  String get guardianQA6Writing => 'Writing';

  @override
  String get guardianQA6ListeningToRadio => 'Listening to Radio';

  @override
  String get guardianQA6WatchingFilms => 'Watching Films';

  @override
  String get guardianQA6Praying => 'Praying';

  @override
  String get guardianQA6Meditation => 'Meditation';

  @override
  String get guardianQA6GrowingPlants => 'Growing Plants';

  @override
  String guardianQA7(String elder) {
    return 'Is there anyone or anything $elder cares about most? If so, please share it with me.';
  }

  @override
  String guardianQA8(String elder) {
    return 'Do you want to receive a daily report about your $elder\'s activities?';
  }

  @override
  String get guardianQA8Yes => 'Yes';

  @override
  String get guardianQA8No => 'No';

  @override
  String guardianQA9(String elder) {
    return 'I will send you notification if your $elder doesn\'t respond to me within';
  }

  @override
  String get guardianQA9OneHour => '1 Hour';

  @override
  String get guardianQA9TwoHours => '2 Hours';

  @override
  String get guardianQA9ThreeHours => '3 Hours';

  @override
  String get guardianQA9Hours => 'Hours';

  @override
  String get cameraAccessTitle => 'Camera access';

  @override
  String get cameraAccessDeniedMessage =>
      'Camera access was denied. Please enable it in Settings to use the camera.';

  @override
  String get cameraAccessDeniedMessageQR =>
      'Camera access was denied. Please enable it in Settings to scan QR codes.';

  @override
  String get openSettings => 'Open Settings';

  @override
  String suggestQA9DoneMessage(String elder) {
    return 'You can check out your $elder\'s activities via our communication board.';
  }

  @override
  String qaDoneMessage(String elder) {
    return 'Glad to receive your answers.\nI will try my best to become a good guardian for your $elder during your absence.\nWill let you know if I need further information.\nThank you.';
  }

  @override
  String get nonGuardianQA2 => 'What is your birthday?';

  @override
  String get nonGuardianQA3 => 'How would you like me to call you?';

  @override
  String get nonGuardianQA4 =>
      'Let me know what you want me to take care of you.';

  @override
  String get nonGuardianQA4HealthMedicineQuestion => 'Need to take medicine?';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion =>
      'Need to take Vitamins/ Functional foods?';

  @override
  String get nonGuardianQA4HealthNeedsHeading =>
      'Please let us know if you need to';

  @override
  String get nonGuardianQA5 => 'Are you interested in hobbies below?';

  @override
  String get nonGuardianQA6 =>
      'Do you want me to make a phone call or send notification to any friends or relatives in case you need urgent help?';

  @override
  String get qaNonDoneMessage =>
      'Glad to receive your answers.\nI will try my best to become a good guardian for you.\nThank you.';
}
