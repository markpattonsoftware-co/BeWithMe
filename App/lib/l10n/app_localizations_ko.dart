// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appNameLauncher => '함께 해요 - (어르신)';

  @override
  String get splashTitle => '함께 해요';

  @override
  String get splashElders => '(어르신)';

  @override
  String get welcomeDeviceIdLabel => '기기 ID:';

  @override
  String get welcomeRoleGuardian => '저는 보호자입니다';

  @override
  String get welcomeRoleElderlyWithGuardian => '저는 어르신이며\n보호자가 있습니다';

  @override
  String get welcomeRoleElderlyNoGuardian => '저는 어르신이며\n보호자가 없습니다';

  @override
  String get welcomeContinue => '계속';

  @override
  String get welcomeDisclaimerPrefix => '계속을 클릭하면\n당사 ';

  @override
  String get welcomeTermsOfService => '이용약관';

  @override
  String get welcomeDisclaimerAnd => ' 및 ';

  @override
  String get welcomePrivacyPolicy => '개인정보\n처리방침';

  @override
  String get dialogOk => '확인';

  @override
  String get dialogCancel => '취소';

  @override
  String get dialogBack => '뒤로';

  @override
  String get dialogNext => '다음';

  @override
  String get suggestGuardianRegisterFirst => '먼저 보호자에게 등록을 요청해 주세요.';

  @override
  String get pleaseSelectAvatar => '아바타를 선택해 주세요.';

  @override
  String get nameLabel => '이름';

  @override
  String get relationshipLabel => '관계';

  @override
  String get yesIAgree => '예, 동의합니다';

  @override
  String get guardianHelloSentence =>
      '안녕하세요,\n\n만나서 반갑습니다!\n앞으로 함께하게 되어 기쁩니다.\n자기소개를 하겠습니다.\n저는 소중한 가족을 돌보는 것을 도와드릴 보호자입니다.\n\n도움이 되는 보호자가 되기 위해,\n당신과 가족에 대한 몇 가지 질문에 답해 주실 필요가 있습니다.\n다음 단계로 넘어가기 전에 준비해 주세요.\n\n제가 도움을 드릴 기회를 주셔서 감사합니다!';

  @override
  String get nonGuardianHelloSentence =>
      '안녕하세요,\n\n만나서 반갑습니다!\n앞으로 함께할 보호자입니다.\n당신을 잘 알고 도움이 되는 보호자가 되기 위해 몇 가지 질문에 답해 주세요.\n\n다음 단계로 넘어가기 전에 준비해 주세요.\n\n제가 도움을 드릴 기회를 주셔서 감사합니다!';

  @override
  String get guardianQA1 => '이름이 어떻게 되시나요?';

  @override
  String get guardianQA2 => '당신과 어르신과의 관계는 무엇인가요?';

  @override
  String get qa2ElderLabel => '어르신은:';

  @override
  String get qa2YouAreLabel => '당신은:';

  @override
  String get qa2ElderDaddy => '아버지';

  @override
  String get qa2ElderMommy => '어머니';

  @override
  String get qa2ElderGrandpa => '할아버지';

  @override
  String get qa2ElderGrandma => '할머니';

  @override
  String get qa2ElderOther => '기타';

  @override
  String get qa2YouSon => '아들';

  @override
  String get qa2YouDaughter => '딸';

  @override
  String get qa2YouNephew => '조카';

  @override
  String get qa2YouNiece => '조카딸';

  @override
  String get qa2OtherHint => '기재해 주세요';

  @override
  String get qa2OtherRequired => '\"기타\"를 선택한 경우 값을 입력해 주세요.';

  @override
  String guardianQA3(String elder) {
    return '당신의 $elder 이름이 무엇인가요?';
  }

  @override
  String guardianQA4(String elder) {
    return '당신의 $elder 생일이 언제인가요?';
  }

  @override
  String guardianQA5(String elder) {
    return '당신의 $elder에 대해 어떤 것을 돌봐 드리면 될지 알려 주세요.';
  }

  @override
  String get guardianQA5DailyActivities => '일상 활동';

  @override
  String get guardianQA5Health => '건강';

  @override
  String get guardianQA5Done => '완료';

  @override
  String get guardianQA5Breakfast => '아침 식사';

  @override
  String get guardianQA5Lunch => '점심';

  @override
  String get guardianQA5Dinner => '저녁 식사';

  @override
  String get guardianQA5Super => '야식';

  @override
  String get guardianQA5DrinkWater => '물 마시기';

  @override
  String get guardianQA5DoExercise => '운동하기';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return '$elder께서 약을 복용해야 하나요?';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return '$elder께서 비타민/건강기능식품을 복용해야 하나요?';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return '$elder께서 다음이 필요한지 알려 주세요';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure => '혈압 측정';

  @override
  String get guardianQA5HealthCheckBloodSugar => '혈당 측정';

  @override
  String get guardianQA5HealthMonitorHeartRate => '심박수 모니터링';

  @override
  String get guardianQA5HealthCheckBodyTemp => '체온 측정';

  @override
  String get guardianQA5HealthWeigh => '체중 측정';

  @override
  String get guardianQA5HealthTrackSpO2 => '산소 포화도(SpO2) 기록';

  @override
  String guardianQA6(String elder) {
    return '$elder의 취미는 무엇인가요?';
  }

  @override
  String get guardianQA6ReadingBooks => '독서';

  @override
  String get guardianQA6Writing => '글쓰기';

  @override
  String get guardianQA6ListeningToRadio => '라디오 듣기';

  @override
  String get guardianQA6WatchingFilms => '영화 보기';

  @override
  String get guardianQA6Praying => '기도';

  @override
  String get guardianQA6Meditation => '명상';

  @override
  String get guardianQA6GrowingPlants => '식물 키우기';

  @override
  String guardianQA7(String elder) {
    return '$elder께서 가장 소중히 여기시는 사람이나 것이 있나요? 있다면 알려 주세요.';
  }

  @override
  String guardianQA8(String elder) {
    return '$elder님의 일일 활동에 대한 일일 보고서를 받으시겠습니까?';
  }

  @override
  String get guardianQA8Yes => '예';

  @override
  String get guardianQA8No => '아니오';

  @override
  String guardianQA9(String elder) {
    return '$elder님이 다음 시간 내에 응답하지 않으면 알림을 보내 드립니다';
  }

  @override
  String get guardianQA9OneHour => '1시간';

  @override
  String get guardianQA9TwoHours => '2시간';

  @override
  String get guardianQA9ThreeHours => '3시간';

  @override
  String get guardianQA9Hours => '시간';

  @override
  String get cameraAccessTitle => '카메라 액세스';

  @override
  String get cameraAccessDeniedMessage =>
      '카메라 액세스가 거부되었습니다. 설정에서 카메라를 활성화해 주세요.';

  @override
  String get cameraAccessDeniedMessageQR =>
      '카메라 액세스가 거부되었습니다. QR 코드를 스캔하려면 설정에서 카메라를 활성화해 주세요.';

  @override
  String get openSettings => '설정 열기';

  @override
  String suggestQA9DoneMessage(String elder) {
    return '소통 게시판에서 $elder님의 활동을 확인하실 수 있습니다.';
  }

  @override
  String qaDoneMessage(String elder) {
    return '답변 감사합니다.\n부재 중 $elder님을 위한 좋은 보호자가 되도록 최선을 다하겠습니다.\n추가 정보가 필요하면 알려 드리겠습니다.\n감사합니다.';
  }

  @override
  String get nonGuardianQA2 => '생일이 언제인가요?';

  @override
  String get nonGuardianQA3 => '어떻게 부르면 될까요?';

  @override
  String get nonGuardianQA4 => '어떻게 돌봐 드리면 좋을지 알려 주세요.';

  @override
  String get nonGuardianQA4HealthMedicineQuestion => '약 복용이 필요하신가요?';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion => '비타민/기능성 식품 복용이 필요하신가요?';

  @override
  String get nonGuardianQA4HealthNeedsHeading => '다음이 필요하시면 알려 주세요';

  @override
  String get nonGuardianQA5 => '아래 취미에 관심 있으신가요?';

  @override
  String get nonGuardianQA6 => '긴급 도움이 필요할 때 친구나 친척에게 전화하거나 알림을 보내 드릴까요?';

  @override
  String get qaNonDoneMessage =>
      '답변 감사합니다.\n당신을 위한 좋은 보호자가 되도록 최선을 다하겠습니다.\n감사합니다.';
}
