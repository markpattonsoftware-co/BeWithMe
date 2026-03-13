// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appNameLauncher => 'كن معي - (كبار السن)';

  @override
  String get splashTitle => 'كن معي';

  @override
  String get splashElders => '(كبار السن)';

  @override
  String get welcomeDeviceIdLabel => 'معرّف الجهاز:';

  @override
  String get welcomeRoleGuardian => 'أنا الوصي';

  @override
  String get welcomeRoleElderlyWithGuardian => 'أنا المسن ولدي\nوصي';

  @override
  String get welcomeRoleElderlyNoGuardian => 'أنا المسن وليس\nلدي وصي';

  @override
  String get welcomeContinue => 'متابعة';

  @override
  String get welcomeDisclaimerPrefix => 'بالنقر على متابعة، فإنك توافق على\n';

  @override
  String get welcomeTermsOfService => 'شروط الخدمة';

  @override
  String get welcomeDisclaimerAnd => ' و';

  @override
  String get welcomePrivacyPolicy => 'سياسة\nالخصوصية';

  @override
  String get dialogOk => 'موافق';

  @override
  String get dialogCancel => 'إلغاء';

  @override
  String get dialogBack => 'رجوع';

  @override
  String get dialogNext => 'التالي';

  @override
  String get suggestGuardianRegisterFirst =>
      'يرجى أن يطلب من وصيك التسجيل أولاً.';

  @override
  String get pleaseSelectAvatar => 'يرجى اختيار صورة رمزية.';

  @override
  String get nameLabel => 'الاسم';

  @override
  String get relationshipLabel => 'العلاقة';

  @override
  String get yesIAgree => 'نعم، أوافق';

  @override
  String get guardianHelloSentence =>
      'مرحباً،\n\nتشرفنا بمقابلتك!\nيسعدني مرافقتك من الآن فصاعداً.\nأود أن أقدم نفسي.\nأنا الوصي الذي سيساعدك على رعاية قريبك العزيز.\n\nلكي أصبح وصياً مفيداً،\nسأحتاج مساعدتك للإجابة على بعض الأسئلة عنك وعن قريبك.\nيرجى الاستعداد قبل الانتقال إلى الخطوة التالية.\n\nشكراً لمنحي فرصة خدمتك!';

  @override
  String get nonGuardianHelloSentence =>
      'مرحباً،\n\nتشرفنا بمقابلتك!\nأنا الوصي الذي سيرافقك من الآن فصاعداً.\nيرجى الإجابة على بعض الأسئلة لأساعدني على معرفتك جيداً وأصبح وصياً مفيداً.\n\nيرجى الاستعداد قبل الانتقال إلى الخطوة التالية.\n\nشكراً لمنحي فرصة خدمتك!';

  @override
  String get guardianQA1 => 'ما اسمك من فضلك؟';

  @override
  String get guardianQA2 => 'ما علاقتك بالمسن؟';

  @override
  String get qa2ElderLabel => 'المسن هو:';

  @override
  String get qa2YouAreLabel => 'أنت:';

  @override
  String get qa2ElderDaddy => 'أب';

  @override
  String get qa2ElderMommy => 'أم';

  @override
  String get qa2ElderGrandpa => 'جد';

  @override
  String get qa2ElderGrandma => 'جدة';

  @override
  String get qa2ElderOther => 'غير ذلك';

  @override
  String get qa2YouSon => 'ابن';

  @override
  String get qa2YouDaughter => 'ابنة';

  @override
  String get qa2YouNephew => 'ابن الأخ/الأخت';

  @override
  String get qa2YouNiece => 'ابنة الأخ/الأخت';

  @override
  String get qa2OtherHint => 'يرجى التحديد';

  @override
  String get qa2OtherRequired => 'يرجى إدخال قيمة عند تحديد \"غير ذلك\".';

  @override
  String guardianQA3(String elder) {
    return 'ما اسم $elder الخاص بك؟';
  }

  @override
  String guardianQA4(String elder) {
    return 'ما تاريخ ميلاد $elder؟';
  }

  @override
  String guardianQA5(String elder) {
    return 'أخبرني بما تريدني أن أعتني به فيما يخص $elder.';
  }

  @override
  String get guardianQA5DailyActivities => 'الأنشطة اليومية';

  @override
  String get guardianQA5Health => 'الصحة';

  @override
  String get guardianQA5Done => 'تم';

  @override
  String get guardianQA5Breakfast => 'الإفطار';

  @override
  String get guardianQA5Lunch => 'الغداء';

  @override
  String get guardianQA5Dinner => 'العشاء';

  @override
  String get guardianQA5Super => 'السوبر';

  @override
  String get guardianQA5DrinkWater => 'شرب الماء';

  @override
  String get guardianQA5DoExercise => 'ممارسة الرياضة';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return 'هل يحتاج $elder إلى تناول الدواء؟';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return 'هل يحتاج $elder إلى تناول الفيتامينات/المكملات؟';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return 'أخبرنا إذا كان $elder يحتاج إلى';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure => 'قياس ضغط الدم';

  @override
  String get guardianQA5HealthCheckBloodSugar => 'فحص مستوى السكر';

  @override
  String get guardianQA5HealthMonitorHeartRate => 'مراقبة معدل النبض';

  @override
  String get guardianQA5HealthCheckBodyTemp => 'قياس درجة الحرارة';

  @override
  String get guardianQA5HealthWeigh => 'الوزن';

  @override
  String get guardianQA5HealthTrackSpO2 => 'تتبع تشبع الأكسجين (SpO2)';

  @override
  String guardianQA6(String elder) {
    return 'ما هي هوايات $elder؟';
  }

  @override
  String get guardianQA6ReadingBooks => 'قراءة الكتب';

  @override
  String get guardianQA6Writing => 'الكتابة';

  @override
  String get guardianQA6ListeningToRadio => 'الاستماع إلى الراديو';

  @override
  String get guardianQA6WatchingFilms => 'مشاهدة الأفلام';

  @override
  String get guardianQA6Praying => 'الصلاة';

  @override
  String get guardianQA6Meditation => 'التأمل';

  @override
  String get guardianQA6GrowingPlants => 'زراعة النباتات';

  @override
  String guardianQA7(String elder) {
    return 'هل يوجد شخص أو شيء يهتم به $elder أكثر من غيره؟ إن وجد، يرجى مشاركته معي.';
  }

  @override
  String guardianQA8(String elder) {
    return 'هل تريد تلقي تقرير يومي عن أنشطة $elder؟';
  }

  @override
  String get guardianQA8Yes => 'نعم';

  @override
  String get guardianQA8No => 'لا';

  @override
  String guardianQA9(String elder) {
    return 'سأرسل لك إشعاراً إذا لم يرد عليك $elder خلال';
  }

  @override
  String get guardianQA9OneHour => 'ساعة واحدة';

  @override
  String get guardianQA9TwoHours => 'ساعتان';

  @override
  String get guardianQA9ThreeHours => '3 ساعات';

  @override
  String get guardianQA9Hours => 'ساعات';

  @override
  String get cameraAccessTitle => 'الوصول إلى الكاميرا';

  @override
  String get cameraAccessDeniedMessage =>
      'تم رفض الوصول إلى الكاميرا. يرجى تمكينها في الإعدادات لاستخدام الكاميرا.';

  @override
  String get cameraAccessDeniedMessageQR =>
      'تم رفض الوصول إلى الكاميرا. يرجى تمكينها في الإعدادات لمسح رموز QR.';

  @override
  String get openSettings => 'فتح الإعدادات';

  @override
  String suggestQA9DoneMessage(String elder) {
    return 'يمكنك الاطلاع على أنشطة $elder عبر لوحة التواصل الخاصة بنا.';
  }

  @override
  String qaDoneMessage(String elder) {
    return 'سعيد بتلقي إجاباتك.\nسأبذل قصارى جهدي لأكون وصياً جيداً لـ $elder أثناء غيابك.\nسأخبرك إذا احتجت مزيداً من المعلومات.\nشكراً لك.';
  }

  @override
  String get nonGuardianQA2 => 'ما تاريخ ميلادك؟';

  @override
  String get nonGuardianQA3 => 'كيف تحب أن أناديك؟';

  @override
  String get nonGuardianQA4 => 'أخبرني بما تريدني أن أعتني بك.';

  @override
  String get nonGuardianQA4HealthMedicineQuestion =>
      'هل تحتاج إلى تناول الدواء؟';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion =>
      'هل تحتاج إلى تناول الفيتامينات/الأغذية الوظيفية؟';

  @override
  String get nonGuardianQA4HealthNeedsHeading =>
      'يرجى إخبارنا إذا كنت بحاجة إلى';

  @override
  String get nonGuardianQA5 => 'هل أنت مهتم بالهوايات أدناه؟';

  @override
  String get nonGuardianQA6 =>
      'هل تريد أن أتصل أو أرسل إشعاراً لأي أصدقاء أو أقارب في حال احتجت مساعدة عاجلة؟';

  @override
  String get qaNonDoneMessage =>
      'سعيد بتلقي إجاباتك.\nسأبذل قصارى جهدي لأكون وصياً جيداً لك.\nشكراً لك.';
}
