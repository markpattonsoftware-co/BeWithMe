import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('pt'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// No description provided for @appNameLauncher.
  ///
  /// In en, this message translates to:
  /// **'Be With Me - (Elders)'**
  String get appNameLauncher;

  /// No description provided for @splashTitle.
  ///
  /// In en, this message translates to:
  /// **'Be With Me'**
  String get splashTitle;

  /// No description provided for @splashElders.
  ///
  /// In en, this message translates to:
  /// **'(Elders)'**
  String get splashElders;

  /// No description provided for @welcomeDeviceIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Device ID:'**
  String get welcomeDeviceIdLabel;

  /// No description provided for @welcomeRoleGuardian.
  ///
  /// In en, this message translates to:
  /// **'I am the Guardian'**
  String get welcomeRoleGuardian;

  /// No description provided for @welcomeRoleElderlyWithGuardian.
  ///
  /// In en, this message translates to:
  /// **'I am the Elderly and\nhave a Guardian'**
  String get welcomeRoleElderlyWithGuardian;

  /// No description provided for @welcomeRoleElderlyNoGuardian.
  ///
  /// In en, this message translates to:
  /// **'I am the Elderly and\nhave no Guardian'**
  String get welcomeRoleElderlyNoGuardian;

  /// No description provided for @welcomeContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get welcomeContinue;

  /// No description provided for @welcomeDisclaimerPrefix.
  ///
  /// In en, this message translates to:
  /// **'By clicking continue, you agree to\nour '**
  String get welcomeDisclaimerPrefix;

  /// No description provided for @welcomeTermsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get welcomeTermsOfService;

  /// No description provided for @welcomeDisclaimerAnd.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get welcomeDisclaimerAnd;

  /// No description provided for @welcomePrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy\nPolicy'**
  String get welcomePrivacyPolicy;

  /// No description provided for @dialogOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get dialogOk;

  /// No description provided for @dialogCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get dialogCancel;

  /// No description provided for @dialogBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get dialogBack;

  /// No description provided for @dialogNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get dialogNext;

  /// No description provided for @suggestGuardianRegisterFirst.
  ///
  /// In en, this message translates to:
  /// **'Please have your Guardian to register it first.'**
  String get suggestGuardianRegisterFirst;

  /// No description provided for @pleaseSelectAvatar.
  ///
  /// In en, this message translates to:
  /// **'Please select an avatar.'**
  String get pleaseSelectAvatar;

  /// No description provided for @nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// No description provided for @relationshipLabel.
  ///
  /// In en, this message translates to:
  /// **'Relationship'**
  String get relationshipLabel;

  /// No description provided for @yesIAgree.
  ///
  /// In en, this message translates to:
  /// **'Yes, I agree'**
  String get yesIAgree;

  /// No description provided for @guardianHelloSentence.
  ///
  /// In en, this message translates to:
  /// **'Hello,\n\nNice to meet you!\nI\'m glad to accompany you from now on.\nI would like to introduce myself.\nI\'m the Guardian who will help you take care of your beloved relative.\n\nTo be able to become a helpful Guardian,\nI will need your help to answer a few questions about you and your relative.\nPlease be prepared before moving to the next step.\n\nThanks for your giving me a chance to serve you!'**
  String get guardianHelloSentence;

  /// No description provided for @nonGuardianHelloSentence.
  ///
  /// In en, this message translates to:
  /// **'Hello,\n\nNice to meet you!\nI\'m the Guardian who will accompany you from now on.\nPlease kindly answer a few questions to help me know about you well and become a helpful Guardian.\n\nPlease be prepared before moving to the next step.\n\nThanks for giving me a chance to serve you!'**
  String get nonGuardianHelloSentence;

  /// No description provided for @guardianQA1.
  ///
  /// In en, this message translates to:
  /// **'What is your name please?'**
  String get guardianQA1;

  /// No description provided for @guardianQA2.
  ///
  /// In en, this message translates to:
  /// **'What is the relationship between you and the elder?'**
  String get guardianQA2;

  /// No description provided for @qa2ElderLabel.
  ///
  /// In en, this message translates to:
  /// **'The elderly is:'**
  String get qa2ElderLabel;

  /// No description provided for @qa2YouAreLabel.
  ///
  /// In en, this message translates to:
  /// **'You are :'**
  String get qa2YouAreLabel;

  /// No description provided for @qa2ElderDaddy.
  ///
  /// In en, this message translates to:
  /// **'Daddy'**
  String get qa2ElderDaddy;

  /// No description provided for @qa2ElderMommy.
  ///
  /// In en, this message translates to:
  /// **'Mommy'**
  String get qa2ElderMommy;

  /// No description provided for @qa2ElderGrandpa.
  ///
  /// In en, this message translates to:
  /// **'Grandpa'**
  String get qa2ElderGrandpa;

  /// No description provided for @qa2ElderGrandma.
  ///
  /// In en, this message translates to:
  /// **'Grandma'**
  String get qa2ElderGrandma;

  /// No description provided for @qa2ElderOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get qa2ElderOther;

  /// No description provided for @qa2YouSon.
  ///
  /// In en, this message translates to:
  /// **'Son'**
  String get qa2YouSon;

  /// No description provided for @qa2YouDaughter.
  ///
  /// In en, this message translates to:
  /// **'Daughter'**
  String get qa2YouDaughter;

  /// No description provided for @qa2YouNephew.
  ///
  /// In en, this message translates to:
  /// **'Nephew'**
  String get qa2YouNephew;

  /// No description provided for @qa2YouNiece.
  ///
  /// In en, this message translates to:
  /// **'Niece'**
  String get qa2YouNiece;

  /// No description provided for @qa2OtherHint.
  ///
  /// In en, this message translates to:
  /// **'Please specify'**
  String get qa2OtherHint;

  /// No description provided for @qa2OtherRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter a value when \"Other\" is selected.'**
  String get qa2OtherRequired;

  /// No description provided for @guardianQA3.
  ///
  /// In en, this message translates to:
  /// **'What is your {elder}\'s name?'**
  String guardianQA3(String elder);

  /// No description provided for @guardianQA4.
  ///
  /// In en, this message translates to:
  /// **'What is your {elder}\'s birthday?'**
  String guardianQA4(String elder);

  /// No description provided for @guardianQA5.
  ///
  /// In en, this message translates to:
  /// **'Let me know what you want me to take care of your {elder} about.'**
  String guardianQA5(String elder);

  /// No description provided for @guardianQA5DailyActivities.
  ///
  /// In en, this message translates to:
  /// **'Daily Activities'**
  String get guardianQA5DailyActivities;

  /// No description provided for @guardianQA5Health.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get guardianQA5Health;

  /// No description provided for @guardianQA5Done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get guardianQA5Done;

  /// No description provided for @guardianQA5Breakfast.
  ///
  /// In en, this message translates to:
  /// **'Breakfast'**
  String get guardianQA5Breakfast;

  /// No description provided for @guardianQA5Lunch.
  ///
  /// In en, this message translates to:
  /// **'Lunch'**
  String get guardianQA5Lunch;

  /// No description provided for @guardianQA5Dinner.
  ///
  /// In en, this message translates to:
  /// **'Dinner'**
  String get guardianQA5Dinner;

  /// No description provided for @guardianQA5Super.
  ///
  /// In en, this message translates to:
  /// **'Super'**
  String get guardianQA5Super;

  /// No description provided for @guardianQA5DrinkWater.
  ///
  /// In en, this message translates to:
  /// **'Drink Water'**
  String get guardianQA5DrinkWater;

  /// No description provided for @guardianQA5DoExercise.
  ///
  /// In en, this message translates to:
  /// **'Do Exercise'**
  String get guardianQA5DoExercise;

  /// No description provided for @guardianQA5HealthMedicineQuestion.
  ///
  /// In en, this message translates to:
  /// **'Does your {elder} need to take medicine?'**
  String guardianQA5HealthMedicineQuestion(String elder);

  /// No description provided for @guardianQA5HealthVitaminsQuestion.
  ///
  /// In en, this message translates to:
  /// **'Does your {elder} need to take Vitamins/Functional foods?'**
  String guardianQA5HealthVitaminsQuestion(String elder);

  /// No description provided for @guardianQA5HealthNeedsHeading.
  ///
  /// In en, this message translates to:
  /// **'Please let us know if your {elder} needs to'**
  String guardianQA5HealthNeedsHeading(String elder);

  /// No description provided for @guardianQA5HealthMeasureBloodPressure.
  ///
  /// In en, this message translates to:
  /// **'Measure blood pressure'**
  String get guardianQA5HealthMeasureBloodPressure;

  /// No description provided for @guardianQA5HealthCheckBloodSugar.
  ///
  /// In en, this message translates to:
  /// **'Check blood sugar levels'**
  String get guardianQA5HealthCheckBloodSugar;

  /// No description provided for @guardianQA5HealthMonitorHeartRate.
  ///
  /// In en, this message translates to:
  /// **'Monitor heart rate'**
  String get guardianQA5HealthMonitorHeartRate;

  /// No description provided for @guardianQA5HealthCheckBodyTemp.
  ///
  /// In en, this message translates to:
  /// **'Check body temperature'**
  String get guardianQA5HealthCheckBodyTemp;

  /// No description provided for @guardianQA5HealthWeigh.
  ///
  /// In en, this message translates to:
  /// **'Weigh'**
  String get guardianQA5HealthWeigh;

  /// No description provided for @guardianQA5HealthTrackSpO2.
  ///
  /// In en, this message translates to:
  /// **'Track oxygen saturation (SpO2)'**
  String get guardianQA5HealthTrackSpO2;

  /// No description provided for @guardianQA6.
  ///
  /// In en, this message translates to:
  /// **'What are {elder}\'s hobbies?'**
  String guardianQA6(String elder);

  /// No description provided for @guardianQA6ReadingBooks.
  ///
  /// In en, this message translates to:
  /// **'Reading Books'**
  String get guardianQA6ReadingBooks;

  /// No description provided for @guardianQA6Writing.
  ///
  /// In en, this message translates to:
  /// **'Writing'**
  String get guardianQA6Writing;

  /// No description provided for @guardianQA6ListeningToRadio.
  ///
  /// In en, this message translates to:
  /// **'Listening to Radio'**
  String get guardianQA6ListeningToRadio;

  /// No description provided for @guardianQA6WatchingFilms.
  ///
  /// In en, this message translates to:
  /// **'Watching Films'**
  String get guardianQA6WatchingFilms;

  /// No description provided for @guardianQA6Praying.
  ///
  /// In en, this message translates to:
  /// **'Praying'**
  String get guardianQA6Praying;

  /// No description provided for @guardianQA6Meditation.
  ///
  /// In en, this message translates to:
  /// **'Meditation'**
  String get guardianQA6Meditation;

  /// No description provided for @guardianQA6GrowingPlants.
  ///
  /// In en, this message translates to:
  /// **'Growing Plants'**
  String get guardianQA6GrowingPlants;

  /// No description provided for @guardianQA7.
  ///
  /// In en, this message translates to:
  /// **'Is there anyone or anything {elder} cares about most? If so, please share it with me.'**
  String guardianQA7(String elder);

  /// No description provided for @guardianQA8.
  ///
  /// In en, this message translates to:
  /// **'Do you want to receive a daily report about your {elder}\'s activities?'**
  String guardianQA8(String elder);

  /// No description provided for @guardianQA8Yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get guardianQA8Yes;

  /// No description provided for @guardianQA8No.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get guardianQA8No;

  /// No description provided for @guardianQA9.
  ///
  /// In en, this message translates to:
  /// **'I will send you notification if your {elder} doesn\'t respond to me within'**
  String guardianQA9(String elder);

  /// No description provided for @guardianQA9OneHour.
  ///
  /// In en, this message translates to:
  /// **'1 Hour'**
  String get guardianQA9OneHour;

  /// No description provided for @guardianQA9TwoHours.
  ///
  /// In en, this message translates to:
  /// **'2 Hours'**
  String get guardianQA9TwoHours;

  /// No description provided for @guardianQA9ThreeHours.
  ///
  /// In en, this message translates to:
  /// **'3 Hours'**
  String get guardianQA9ThreeHours;

  /// No description provided for @guardianQA9Hours.
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get guardianQA9Hours;

  /// No description provided for @cameraAccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Camera access'**
  String get cameraAccessTitle;

  /// No description provided for @cameraAccessDeniedMessage.
  ///
  /// In en, this message translates to:
  /// **'Camera access was denied. Please enable it in Settings to use the camera.'**
  String get cameraAccessDeniedMessage;

  /// No description provided for @cameraAccessDeniedMessageQR.
  ///
  /// In en, this message translates to:
  /// **'Camera access was denied. Please enable it in Settings to scan QR codes.'**
  String get cameraAccessDeniedMessageQR;

  /// No description provided for @openSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @suggestQA9DoneMessage.
  ///
  /// In en, this message translates to:
  /// **'You can check out your {elder}\'s activities via our communication board.'**
  String suggestQA9DoneMessage(String elder);

  /// No description provided for @qaDoneMessage.
  ///
  /// In en, this message translates to:
  /// **'Glad to receive your answers.\nI will try my best to become a good guardian for your {elder} during your absence.\nWill let you know if I need further information.\nThank you.'**
  String qaDoneMessage(String elder);

  /// No description provided for @nonGuardianQA2.
  ///
  /// In en, this message translates to:
  /// **'What is your birthday?'**
  String get nonGuardianQA2;

  /// No description provided for @nonGuardianQA3.
  ///
  /// In en, this message translates to:
  /// **'How would you like me to call you?'**
  String get nonGuardianQA3;

  /// No description provided for @nonGuardianQA4.
  ///
  /// In en, this message translates to:
  /// **'Let me know what you want me to take care of you.'**
  String get nonGuardianQA4;

  /// No description provided for @nonGuardianQA4HealthMedicineQuestion.
  ///
  /// In en, this message translates to:
  /// **'Need to take medicine?'**
  String get nonGuardianQA4HealthMedicineQuestion;

  /// No description provided for @nonGuardianQA4HealthVitaminsQuestion.
  ///
  /// In en, this message translates to:
  /// **'Need to take Vitamins/ Functional foods?'**
  String get nonGuardianQA4HealthVitaminsQuestion;

  /// No description provided for @nonGuardianQA4HealthNeedsHeading.
  ///
  /// In en, this message translates to:
  /// **'Please let us know if you need to'**
  String get nonGuardianQA4HealthNeedsHeading;

  /// No description provided for @nonGuardianQA5.
  ///
  /// In en, this message translates to:
  /// **'Are you interested in hobbies below?'**
  String get nonGuardianQA5;

  /// No description provided for @nonGuardianQA6.
  ///
  /// In en, this message translates to:
  /// **'Do you want me to make a phone call or send notification to any friends or relatives in case you need urgent help?'**
  String get nonGuardianQA6;

  /// No description provided for @qaNonDoneMessage.
  ///
  /// In en, this message translates to:
  /// **'Glad to receive your answers.\nI will try my best to become a good guardian for you.\nThank you.'**
  String get qaNonDoneMessage;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'it',
    'ja',
    'ko',
    'pt',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'pt':
      return AppLocalizationsPt();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
