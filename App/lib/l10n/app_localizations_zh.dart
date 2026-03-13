// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appNameLauncher => '与我同在 - （长者）';

  @override
  String get splashTitle => '与我同在';

  @override
  String get splashElders => '（长者）';

  @override
  String get welcomeDeviceIdLabel => '设备 ID：';

  @override
  String get welcomeRoleGuardian => '我是监护人';

  @override
  String get welcomeRoleElderlyWithGuardian => '我是长者\n且有监护人';

  @override
  String get welcomeRoleElderlyNoGuardian => '我是长者\n且无监护人';

  @override
  String get welcomeContinue => '继续';

  @override
  String get welcomeDisclaimerPrefix => '点击继续即表示您同意\n我们的';

  @override
  String get welcomeTermsOfService => '服务条款';

  @override
  String get welcomeDisclaimerAnd => '和';

  @override
  String get welcomePrivacyPolicy => '隐私\n政策';

  @override
  String get dialogOk => '确定';

  @override
  String get dialogCancel => '取消';

  @override
  String get dialogBack => '返回';

  @override
  String get dialogNext => '下一步';

  @override
  String get suggestGuardianRegisterFirst => '请先让您的监护人完成注册。';

  @override
  String get pleaseSelectAvatar => '请选择头像。';

  @override
  String get nameLabel => '姓名';

  @override
  String get relationshipLabel => '关系';

  @override
  String get yesIAgree => '是的，我同意';

  @override
  String get guardianHelloSentence =>
      'Hello,\n\nNice to meet you!\nI\'m glad to accompany you from now on.\nI would like to introduce myself.\nI\'m the Guardian who will help you take care of your beloved relative.\n\nTo be able to become a helpful Guardian,\nI will need your help to answer a few questions about you and your relative.\nPlease be prepared before moving to the next step.\n\nThanks for your giving me a chance to serve you!';

  @override
  String get nonGuardianHelloSentence =>
      'Hello,\n\nNice to meet you!\nI\'m the Guardian who will accompany you from now on.\nPlease kindly answer a few questions to help me know about you well and become a helpful Guardian.\n\nPlease be prepared before moving to the next step.\n\nThanks for giving me a chance to serve you!';

  @override
  String get guardianQA1 => '请问您叫什么名字？';

  @override
  String get guardianQA2 => '您与长者的关系是什么？';

  @override
  String get qa2ElderLabel => '长者是：';

  @override
  String get qa2YouAreLabel => '您是：';

  @override
  String get qa2ElderDaddy => '爸爸';

  @override
  String get qa2ElderMommy => '妈妈';

  @override
  String get qa2ElderGrandpa => '爷爷/外公';

  @override
  String get qa2ElderGrandma => '奶奶/外婆';

  @override
  String get qa2ElderOther => '其他';

  @override
  String get qa2YouSon => '儿子';

  @override
  String get qa2YouDaughter => '女儿';

  @override
  String get qa2YouNephew => '侄子/外甥';

  @override
  String get qa2YouNiece => '侄女/外甥女';

  @override
  String get qa2OtherHint => '请说明';

  @override
  String get qa2OtherRequired => '选择「其他」时请输入具体内容。';

  @override
  String guardianQA3(String elder) {
    return '您的$elder叫什么名字？';
  }

  @override
  String guardianQA4(String elder) {
    return '您的$elder的生日是什么时候？';
  }

  @override
  String guardianQA5(String elder) {
    return '请告诉我您希望我帮您照顾$elder的哪些方面。';
  }

  @override
  String get guardianQA5DailyActivities => '日常活动';

  @override
  String get guardianQA5Health => '健康';

  @override
  String get guardianQA5Done => '完成';

  @override
  String get guardianQA5Breakfast => '早餐';

  @override
  String get guardianQA5Lunch => '午餐';

  @override
  String get guardianQA5Dinner => '晚餐';

  @override
  String get guardianQA5Super => '宵夜';

  @override
  String get guardianQA5DrinkWater => '喝水';

  @override
  String get guardianQA5DoExercise => '运动';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return '您的$elder需要服药吗？';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return '您的$elder需要服用维生素/保健品吗？';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return '请告诉我们您的$elder是否需要';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure => '量血压';

  @override
  String get guardianQA5HealthCheckBloodSugar => '测血糖';

  @override
  String get guardianQA5HealthMonitorHeartRate => '监测心率';

  @override
  String get guardianQA5HealthCheckBodyTemp => '测体温';

  @override
  String get guardianQA5HealthWeigh => '称体重';

  @override
  String get guardianQA5HealthTrackSpO2 => '监测血氧饱和度(SpO2)';

  @override
  String guardianQA6(String elder) {
    return '您的$elder有什么爱好？';
  }

  @override
  String get guardianQA6ReadingBooks => '读书';

  @override
  String get guardianQA6Writing => '写作';

  @override
  String get guardianQA6ListeningToRadio => '听广播';

  @override
  String get guardianQA6WatchingFilms => '看电影';

  @override
  String get guardianQA6Praying => '祈祷';

  @override
  String get guardianQA6Meditation => '冥想';

  @override
  String get guardianQA6GrowingPlants => '养植物';

  @override
  String guardianQA7(String elder) {
    return '是否有$elder最关心的人或事？如果有，请告诉我。';
  }

  @override
  String guardianQA8(String elder) {
    return '您是否想收到关于$elder日常活动的每日报告？';
  }

  @override
  String get guardianQA8Yes => '是';

  @override
  String get guardianQA8No => '否';

  @override
  String guardianQA9(String elder) {
    return '如果您的$elder在此时间内未回复，我将向您发送通知';
  }

  @override
  String get guardianQA9OneHour => '1 小时';

  @override
  String get guardianQA9TwoHours => '2 小时';

  @override
  String get guardianQA9ThreeHours => '3 小时';

  @override
  String get guardianQA9Hours => '小时';

  @override
  String get cameraAccessTitle => '相机访问';

  @override
  String get cameraAccessDeniedMessage => '相机访问被拒绝。请在设置中启用相机。';

  @override
  String get cameraAccessDeniedMessageQR => '相机访问被拒绝。请在设置中启用相机以扫描二维码。';

  @override
  String get openSettings => '打开设置';

  @override
  String suggestQA9DoneMessage(String elder) {
    return '您可以通过我们的沟通板查看$elder的活动。';
  }

  @override
  String qaDoneMessage(String elder) {
    return '感谢您的回答。\n我会尽力在您不在期间成为您$elder的好监护人。\n如需更多信息，我会告知您。\n谢谢。';
  }

  @override
  String get nonGuardianQA2 => '你的生日是哪天？';

  @override
  String get nonGuardianQA3 => '你希望我怎么称呼你？';

  @override
  String get nonGuardianQA4 => '请告诉我你希望我如何照顾你。';

  @override
  String get nonGuardianQA4HealthMedicineQuestion => '需要服药吗？';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion => '需要服用维生素/保健食品吗？';

  @override
  String get nonGuardianQA4HealthNeedsHeading => '如需以下项目请告知我们';

  @override
  String get nonGuardianQA5 => '你对以下爱好感兴趣吗？';

  @override
  String get nonGuardianQA6 => '当你需要紧急帮助时，你希望我打电话或发通知给你的亲友吗？';

  @override
  String get qaNonDoneMessage => '感谢您的回答。\n我会尽力成为您的好监护人。\n谢谢。';
}
