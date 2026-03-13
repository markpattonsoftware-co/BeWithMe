// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appNameLauncher => 'Bên Cạnh Tôi - (Người cao tuổi)';

  @override
  String get splashTitle => 'Bên Cạnh Tôi';

  @override
  String get splashElders => '(Người cao tuổi)';

  @override
  String get welcomeDeviceIdLabel => 'ID thiết bị:';

  @override
  String get welcomeRoleGuardian => 'Tôi là Người giám hộ';

  @override
  String get welcomeRoleElderlyWithGuardian =>
      'Tôi là Người cao tuổi\nvà có Người giám hộ';

  @override
  String get welcomeRoleElderlyNoGuardian =>
      'Tôi là Người cao tuổi\nvà không có Người giám hộ';

  @override
  String get welcomeContinue => 'Tiếp tục';

  @override
  String get welcomeDisclaimerPrefix =>
      'Bằng cách nhấn Tiếp tục, bạn đồng ý với\n';

  @override
  String get welcomeTermsOfService => 'Điều khoản Dịch vụ';

  @override
  String get welcomeDisclaimerAnd => ' và ';

  @override
  String get welcomePrivacyPolicy => 'Chính sách\nBảo mật';

  @override
  String get dialogOk => 'OK';

  @override
  String get dialogCancel => 'Hủy';

  @override
  String get dialogBack => 'Quay lại';

  @override
  String get dialogNext => 'Tiếp';

  @override
  String get suggestGuardianRegisterFirst =>
      'Vui lòng nhờ Người giám hộ của bạn đăng ký trước.';

  @override
  String get pleaseSelectAvatar => 'Vui lòng chọn ảnh đại diện.';

  @override
  String get nameLabel => 'Tên';

  @override
  String get relationshipLabel => 'Mối quan hệ';

  @override
  String get yesIAgree => 'Vâng, tôi đồng ý';

  @override
  String get guardianHelloSentence =>
      'Xin chào,\n\nRất vui được gặp bạn!\nTôi rất vui được đồng hành cùng bạn từ bây giờ.\nTôi xin tự giới thiệu.\nTôi là Người giám hộ sẽ giúp bạn chăm sóc người thân yêu của bạn.\n\nĐể trở thành một Người giám hộ hữu ích,\ntôi cần bạn giúp trả lời một vài câu hỏi về bạn và người thân của bạn.\nVui lòng chuẩn bị trước khi chuyển sang bước tiếp theo.\n\nCảm ơn bạn đã cho tôi cơ hội phục vụ bạn!';

  @override
  String get nonGuardianHelloSentence =>
      'Xin chào,\n\nRất vui được gặp bạn!\nTôi là Người giám hộ sẽ đồng hành cùng bạn từ bây giờ.\nVui lòng trả lời một vài câu hỏi để tôi hiểu rõ về bạn và trở thành một Người giám hộ hữu ích.\n\nVui lòng chuẩn bị trước khi chuyển sang bước tiếp theo.\n\nCảm ơn bạn đã cho tôi cơ hội phục vụ bạn!';

  @override
  String get guardianQA1 => 'Tên của bạn là gì?';

  @override
  String get guardianQA2 => 'Mối quan hệ giữa bạn và người cao tuổi là gì?';

  @override
  String get qa2ElderLabel => 'Người cao tuổi là:';

  @override
  String get qa2YouAreLabel => 'Bạn là:';

  @override
  String get qa2ElderDaddy => 'Bố';

  @override
  String get qa2ElderMommy => 'Mẹ';

  @override
  String get qa2ElderGrandpa => 'Ông';

  @override
  String get qa2ElderGrandma => 'Bà';

  @override
  String get qa2ElderOther => 'Khác';

  @override
  String get qa2YouSon => 'Con trai';

  @override
  String get qa2YouDaughter => 'Con gái';

  @override
  String get qa2YouNephew => 'Cháu trai';

  @override
  String get qa2YouNiece => 'Cháu gái';

  @override
  String get qa2OtherHint => 'Vui lòng ghi rõ';

  @override
  String get qa2OtherRequired => 'Vui lòng nhập giá trị khi chọn \"Khác\".';

  @override
  String guardianQA3(String elder) {
    return 'Tên $elder của bạn là gì?';
  }

  @override
  String guardianQA4(String elder) {
    return 'Sinh nhật $elder của bạn là khi nào?';
  }

  @override
  String guardianQA5(String elder) {
    return 'Cho tôi biết bạn muốn tôi chăm sóc $elder của bạn về những gì.';
  }

  @override
  String get guardianQA5DailyActivities => 'Hoạt động hàng ngày';

  @override
  String get guardianQA5Health => 'Sức khỏe';

  @override
  String get guardianQA5Done => 'Xong';

  @override
  String get guardianQA5Breakfast => 'Bữa sáng';

  @override
  String get guardianQA5Lunch => 'Bữa trưa';

  @override
  String get guardianQA5Dinner => 'Bữa tối';

  @override
  String get guardianQA5Super => 'Bữa khuya';

  @override
  String get guardianQA5DrinkWater => 'Uống nước';

  @override
  String get guardianQA5DoExercise => 'Tập thể dục';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return '$elder của bạn có cần uống thuốc không?';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return '$elder của bạn có cần uống vitamin/thực phẩm chức năng không?';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return 'Vui lòng cho chúng tôi biết nếu $elder của bạn cần';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure => 'Đo huyết áp';

  @override
  String get guardianQA5HealthCheckBloodSugar => 'Kiểm tra đường huyết';

  @override
  String get guardianQA5HealthMonitorHeartRate => 'Theo dõi nhịp tim';

  @override
  String get guardianQA5HealthCheckBodyTemp => 'Đo nhiệt độ cơ thể';

  @override
  String get guardianQA5HealthWeigh => 'Cân nặng';

  @override
  String get guardianQA5HealthTrackSpO2 => 'Theo dõi độ bão hòa oxy (SpO2)';

  @override
  String guardianQA6(String elder) {
    return 'Sở thích của $elder là gì?';
  }

  @override
  String get guardianQA6ReadingBooks => 'Đọc sách';

  @override
  String get guardianQA6Writing => 'Viết';

  @override
  String get guardianQA6ListeningToRadio => 'Nghe radio';

  @override
  String get guardianQA6WatchingFilms => 'Xem phim';

  @override
  String get guardianQA6Praying => 'Cầu nguyện';

  @override
  String get guardianQA6Meditation => 'Thiền';

  @override
  String get guardianQA6GrowingPlants => 'Trồng cây';

  @override
  String guardianQA7(String elder) {
    return 'Có ai hay điều gì mà $elder quan tâm nhất không? Nếu có, hãy chia sẻ với tôi.';
  }

  @override
  String guardianQA8(String elder) {
    return 'Bạn có muốn nhận báo cáo hàng ngày về hoạt động của $elder không?';
  }

  @override
  String get guardianQA8Yes => 'Có';

  @override
  String get guardianQA8No => 'Không';

  @override
  String guardianQA9(String elder) {
    return 'Tôi sẽ gửi thông báo cho bạn nếu $elder không phản hồi tôi trong vòng';
  }

  @override
  String get guardianQA9OneHour => '1 giờ';

  @override
  String get guardianQA9TwoHours => '2 giờ';

  @override
  String get guardianQA9ThreeHours => '3 giờ';

  @override
  String get guardianQA9Hours => 'giờ';

  @override
  String get cameraAccessTitle => 'Quyền truy cập camera';

  @override
  String get cameraAccessDeniedMessage =>
      'Quyền truy cập camera bị từ chối. Vui lòng bật trong Cài đặt để sử dụng camera.';

  @override
  String get cameraAccessDeniedMessageQR =>
      'Quyền truy cập camera bị từ chối. Vui lòng bật trong Cài đặt để quét mã QR.';

  @override
  String get openSettings => 'Mở Cài đặt';

  @override
  String suggestQA9DoneMessage(String elder) {
    return 'Bạn có thể xem hoạt động của $elder qua bảng thông tin liên lạc của chúng tôi.';
  }

  @override
  String qaDoneMessage(String elder) {
    return 'Cảm ơn bạn đã trả lời.\nTôi sẽ cố gắng hết sức để trở thành người giám hộ tốt cho $elder khi bạn vắng mặt.\nTôi sẽ thông báo nếu cần thêm thông tin.\nCảm ơn bạn.';
  }

  @override
  String get nonGuardianQA2 => 'Sinh nhật của bạn là khi nào?';

  @override
  String get nonGuardianQA3 => 'Bạn muốn tôi gọi bạn như thế nào?';

  @override
  String get nonGuardianQA4 =>
      'Hãy cho tôi biết bạn muốn tôi chăm sóc bạn như thế nào.';

  @override
  String get nonGuardianQA4HealthMedicineQuestion => 'Có cần uống thuốc không?';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion =>
      'Có cần uống vitamin / thực phẩm chức năng không?';

  @override
  String get nonGuardianQA4HealthNeedsHeading =>
      'Vui lòng cho chúng tôi biết nếu bạn cần';

  @override
  String get nonGuardianQA5 =>
      'Bạn có quan tâm đến các sở thích dưới đây không?';

  @override
  String get nonGuardianQA6 =>
      'Bạn có muốn tôi gọi điện hoặc gửi thông báo cho bạn bè hoặc người thân khi bạn cần trợ giúp khẩn cấp không?';

  @override
  String get qaNonDoneMessage =>
      'Cảm ơn bạn đã trả lời.\nTôi sẽ cố gắng hết sức để trở thành người giám hộ tốt cho bạn.\nCảm ơn bạn.';
}
