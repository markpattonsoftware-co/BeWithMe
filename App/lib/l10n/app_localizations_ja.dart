// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appNameLauncher => 'ビー・ウィズ・ミー - （シニア向け）';

  @override
  String get splashTitle => 'ビー・ウィズ・ミー';

  @override
  String get splashElders => '（シニア向け）';

  @override
  String get welcomeDeviceIdLabel => 'デバイスID：';

  @override
  String get welcomeRoleGuardian => '私は保護者です';

  @override
  String get welcomeRoleElderlyWithGuardian => '私は高齢者で\n保護者がいます';

  @override
  String get welcomeRoleElderlyNoGuardian => '私は高齢者で\n保護者がいません';

  @override
  String get welcomeContinue => '続ける';

  @override
  String get welcomeDisclaimerPrefix => '続けるをクリックすると、\n当社の';

  @override
  String get welcomeTermsOfService => '利用規約';

  @override
  String get welcomeDisclaimerAnd => 'および';

  @override
  String get welcomePrivacyPolicy => 'プライバシー\nポリシー';

  @override
  String get dialogOk => 'OK';

  @override
  String get dialogCancel => 'キャンセル';

  @override
  String get dialogBack => '戻る';

  @override
  String get dialogNext => '次へ';

  @override
  String get suggestGuardianRegisterFirst => 'まず保護者に登録してもらってください。';

  @override
  String get pleaseSelectAvatar => 'アバターを選択してください。';

  @override
  String get nameLabel => '名前';

  @override
  String get relationshipLabel => '続柄';

  @override
  String get yesIAgree => 'はい、同意します';

  @override
  String get guardianHelloSentence =>
      'こんにちは。\n\nお会いできてうれしいです！\nこれからよろしくお願いします。\n自己紹介させてください。\n私は大切なご家族のお世話をお手伝いする保護者です。\n\nより良い保護者になるため、\nあなたとご家族についていくつか質問にお答えいただく必要があります。\n次のステップに進む前にご準備ください。\n\nお役に立てる機会をいただきありがとうございます！';

  @override
  String get nonGuardianHelloSentence =>
      'こんにちは。\n\nお会いできてうれしいです！\nこれからお伴する保護者です。\nあなたのことをよく知り、より良い保護者になるため、いくつか質問にお答えください。\n\n次のステップに進む前にご準備ください。\n\nお役に立てる機会をいただきありがとうございます！';

  @override
  String get guardianQA1 => 'お名前を教えてください。';

  @override
  String get guardianQA2 => 'ご本人と高齢者の関係を教えてください。';

  @override
  String get qa2ElderLabel => '高齢者は：';

  @override
  String get qa2YouAreLabel => 'あなたは：';

  @override
  String get qa2ElderDaddy => 'お父さん';

  @override
  String get qa2ElderMommy => 'お母さん';

  @override
  String get qa2ElderGrandpa => 'おじいさん';

  @override
  String get qa2ElderGrandma => 'おばあさん';

  @override
  String get qa2ElderOther => 'その他';

  @override
  String get qa2YouSon => '息子';

  @override
  String get qa2YouDaughter => '娘';

  @override
  String get qa2YouNephew => '甥';

  @override
  String get qa2YouNiece => '姪';

  @override
  String get qa2OtherHint => 'ご記入ください';

  @override
  String get qa2OtherRequired => '「その他」を選択した場合はご記入ください。';

  @override
  String guardianQA3(String elder) {
    return 'あなたの$elderの名前は何ですか？';
  }

  @override
  String guardianQA4(String elder) {
    return 'あなたの$elderの誕生日はいつですか？';
  }

  @override
  String guardianQA5(String elder) {
    return 'あなたの$elderについて、どのようなお世話を希望されるか教えてください。';
  }

  @override
  String get guardianQA5DailyActivities => '日常の活動';

  @override
  String get guardianQA5Health => '健康';

  @override
  String get guardianQA5Done => '完了';

  @override
  String get guardianQA5Breakfast => '朝食';

  @override
  String get guardianQA5Lunch => '昼食';

  @override
  String get guardianQA5Dinner => '夕食';

  @override
  String get guardianQA5Super => '夜食';

  @override
  String get guardianQA5DrinkWater => '水分を取る';

  @override
  String get guardianQA5DoExercise => '運動する';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return 'あなたの$elderは服薬が必要ですか？';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return 'あなたの$elderはビタミン・健康食品が必要ですか？';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return 'あなたの$elderに以下の必要があるか教えてください';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure => '血圧を測る';

  @override
  String get guardianQA5HealthCheckBloodSugar => '血糖値を測る';

  @override
  String get guardianQA5HealthMonitorHeartRate => '心拍数をモニターする';

  @override
  String get guardianQA5HealthCheckBodyTemp => '体温を測る';

  @override
  String get guardianQA5HealthWeigh => '体重を測る';

  @override
  String get guardianQA5HealthTrackSpO2 => '血中酸素飽和度(SpO2)を記録する';

  @override
  String guardianQA6(String elder) {
    return 'あなたの$elderの趣味は何ですか？';
  }

  @override
  String get guardianQA6ReadingBooks => '読書';

  @override
  String get guardianQA6Writing => '書く';

  @override
  String get guardianQA6ListeningToRadio => 'ラジオを聴く';

  @override
  String get guardianQA6WatchingFilms => '映画を見る';

  @override
  String get guardianQA6Praying => '祈り';

  @override
  String get guardianQA6Meditation => '瞑想';

  @override
  String get guardianQA6GrowingPlants => '植物を育てる';

  @override
  String guardianQA7(String elder) {
    return '$elderが最も大切にしている人やものはありますか？あれば教えてください。';
  }

  @override
  String guardianQA8(String elder) {
    return '$elderの日々の活動について毎日の報告を受け取りたいですか？';
  }

  @override
  String get guardianQA8Yes => 'はい';

  @override
  String get guardianQA8No => 'いいえ';

  @override
  String guardianQA9(String elder) {
    return '$elderが次の時間内に返信がない場合、通知をお送りします';
  }

  @override
  String get guardianQA9OneHour => '1 時間';

  @override
  String get guardianQA9TwoHours => '2 時間';

  @override
  String get guardianQA9ThreeHours => '3 時間';

  @override
  String get guardianQA9Hours => '時間';

  @override
  String get cameraAccessTitle => 'カメラへのアクセス';

  @override
  String get cameraAccessDeniedMessage => 'カメラへのアクセスが拒否されました。設定でカメラを有効にしてください。';

  @override
  String get cameraAccessDeniedMessageQR =>
      'カメラへのアクセスが拒否されました。QRコードをスキャンするには設定でカメラを有効にしてください。';

  @override
  String get openSettings => '設定を開く';

  @override
  String suggestQA9DoneMessage(String elder) {
    return 'コミュニケーションボードで$elderの活動をご確認いただけます。';
  }

  @override
  String qaDoneMessage(String elder) {
    return 'ご回答ありがとうございます。\nお留守の間、$elderのよきガーディアンになれるよう努めます。\n追加で情報が必要な場合はお知らせします。\nありがとうございました。';
  }

  @override
  String get nonGuardianQA2 => 'あなたの誕生日はいつですか？';

  @override
  String get nonGuardianQA3 => 'どのようにお呼びしましょうか？';

  @override
  String get nonGuardianQA4 => 'どのようなお世話が必要か教えてください。';

  @override
  String get nonGuardianQA4HealthMedicineQuestion => '服薬は必要ですか？';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion => 'ビタミン・機能性食品は必要ですか？';

  @override
  String get nonGuardianQA4HealthNeedsHeading => '以下の対応が必要な場合はお知らせください';

  @override
  String get nonGuardianQA5 => '以下の趣味に興味はありますか？';

  @override
  String get nonGuardianQA6 => '緊急時に友達や親戚に電話や通知を送ってほしいですか？';

  @override
  String get qaNonDoneMessage =>
      'ご回答ありがとうございます。\nあなたのよきガーディアンになれるよう努めます。\nありがとうございました。';
}
