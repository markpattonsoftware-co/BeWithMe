// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appNameLauncher => 'Sei Bei Mir - (Senioren)';

  @override
  String get splashTitle => 'Sei Bei Mir';

  @override
  String get splashElders => '(Senioren)';

  @override
  String get welcomeDeviceIdLabel => 'Geräte-ID:';

  @override
  String get welcomeRoleGuardian => 'Ich bin der Vormund';

  @override
  String get welcomeRoleElderlyWithGuardian =>
      'Ich bin der Ältere und\nhabe einen Vormund';

  @override
  String get welcomeRoleElderlyNoGuardian =>
      'Ich bin der Ältere und\nhabe keinen Vormund';

  @override
  String get welcomeContinue => 'Weiter';

  @override
  String get welcomeDisclaimerPrefix =>
      'Mit Klick auf Weiter akzeptieren Sie\nunsere ';

  @override
  String get welcomeTermsOfService => 'Nutzungsbedingungen';

  @override
  String get welcomeDisclaimerAnd => ' und die ';

  @override
  String get welcomePrivacyPolicy => 'Datenschutz-\nrichtlinie';

  @override
  String get dialogOk => 'OK';

  @override
  String get dialogCancel => 'Abbrechen';

  @override
  String get dialogBack => 'Zurück';

  @override
  String get dialogNext => 'Weiter';

  @override
  String get suggestGuardianRegisterFirst =>
      'Bitten Sie Ihren Vormund, sich zuerst zu registrieren.';

  @override
  String get pleaseSelectAvatar => 'Bitte wählen Sie einen Avatar.';

  @override
  String get nameLabel => 'Name';

  @override
  String get relationshipLabel => 'Beziehung';

  @override
  String get yesIAgree => 'Ja, ich stimme zu';

  @override
  String get guardianHelloSentence =>
      'Hallo,\n\nSchön, Sie kennenzulernen!\nIch freue mich, Sie von nun an zu begleiten.\nMöchte mich kurz vorstellen.\nIch bin der Vormund, der Ihnen bei der Pflege Ihres Angehörigen helfen wird.\n\nUm ein hilfreicher Vormund zu sein,\nbrauche ich Ihre Hilfe, ein paar Fragen zu Ihnen und Ihrem Angehörigen zu beantworten.\nBitte seien Sie vorbereitet, bevor Sie zum nächsten Schritt gehen.\n\nDanke, dass Sie mir die Chance geben, Ihnen zu dienen!';

  @override
  String get nonGuardianHelloSentence =>
      'Hallo,\n\nSchön, Sie kennenzulernen!\nIch bin der Vormund, der Sie von nun an begleiten wird.\nBitte beantworten Sie ein paar Fragen, damit ich Sie besser kennenlerne und ein hilfreicher Vormund werden kann.\n\nBitte seien Sie vorbereitet, bevor Sie zum nächsten Schritt gehen.\n\nDanke, dass Sie mir die Chance geben, Ihnen zu dienen!';

  @override
  String get guardianQA1 => 'Wie ist Ihr Name, bitte?';

  @override
  String get guardianQA2 => 'Wie ist Ihre Beziehung zum Älteren?';

  @override
  String get qa2ElderLabel => 'Der Ältere ist:';

  @override
  String get qa2YouAreLabel => 'Sie sind:';

  @override
  String get qa2ElderDaddy => 'Papa';

  @override
  String get qa2ElderMommy => 'Mama';

  @override
  String get qa2ElderGrandpa => 'Opa';

  @override
  String get qa2ElderGrandma => 'Oma';

  @override
  String get qa2ElderOther => 'Sonstiges';

  @override
  String get qa2YouSon => 'Sohn';

  @override
  String get qa2YouDaughter => 'Tochter';

  @override
  String get qa2YouNephew => 'Neffe';

  @override
  String get qa2YouNiece => 'Nichte';

  @override
  String get qa2OtherHint => 'Bitte angeben';

  @override
  String get qa2OtherRequired =>
      'Bitte geben Sie einen Wert ein, wenn \"Sonstiges\" ausgewählt ist.';

  @override
  String guardianQA3(String elder) {
    return 'Wie heißt Ihr $elder?';
  }

  @override
  String guardianQA4(String elder) {
    return 'Wann hat Ihr $elder Geburtstag?';
  }

  @override
  String guardianQA5(String elder) {
    return 'Lassen Sie mich wissen, worum ich mich bei Ihrem $elder kümmern soll.';
  }

  @override
  String get guardianQA5DailyActivities => 'Tägliche Aktivitäten';

  @override
  String get guardianQA5Health => 'Gesundheit';

  @override
  String get guardianQA5Done => 'Fertig';

  @override
  String get guardianQA5Breakfast => 'Frühstück';

  @override
  String get guardianQA5Lunch => 'Mittagessen';

  @override
  String get guardianQA5Dinner => 'Abendessen';

  @override
  String get guardianQA5Super => 'Abendbrot';

  @override
  String get guardianQA5DrinkWater => 'Wasser trinken';

  @override
  String get guardianQA5DoExercise => 'Sport machen';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return 'Muss Ihr $elder Medikamente einnehmen?';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return 'Muss Ihr $elder Vitamine/Nahrungsergänzung einnehmen?';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return 'Bitte teilen Sie uns mit, ob Ihr $elder folgendes benötigt';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure => 'Blutdruck messen';

  @override
  String get guardianQA5HealthCheckBloodSugar => 'Blutzucker messen';

  @override
  String get guardianQA5HealthMonitorHeartRate => 'Herzfrequenz überwachen';

  @override
  String get guardianQA5HealthCheckBodyTemp => 'Körpertemperatur messen';

  @override
  String get guardianQA5HealthWeigh => 'Wiegen';

  @override
  String get guardianQA5HealthTrackSpO2 =>
      'Sauerstoffsättigung (SpO2) erfassen';

  @override
  String guardianQA6(String elder) {
    return 'Was sind ${elder}s Hobbys?';
  }

  @override
  String get guardianQA6ReadingBooks => 'Bücher lesen';

  @override
  String get guardianQA6Writing => 'Schreiben';

  @override
  String get guardianQA6ListeningToRadio => 'Radio hören';

  @override
  String get guardianQA6WatchingFilms => 'Filme schauen';

  @override
  String get guardianQA6Praying => 'Beten';

  @override
  String get guardianQA6Meditation => 'Meditation';

  @override
  String get guardianQA6GrowingPlants => 'Pflanzen züchten';

  @override
  String guardianQA7(String elder) {
    return 'Gibt es jemanden oder etwas, das $elder am meisten am Herzen liegt? Wenn ja, teilen Sie es mir bitte mit.';
  }

  @override
  String guardianQA8(String elder) {
    return 'Möchten Sie einen täglichen Bericht über die Aktivitäten von $elder erhalten?';
  }

  @override
  String get guardianQA8Yes => 'Ja';

  @override
  String get guardianQA8No => 'Nein';

  @override
  String guardianQA9(String elder) {
    return 'Ich sende Ihnen eine Benachrichtigung, wenn $elder innerhalb der folgenden Zeit nicht antwortet';
  }

  @override
  String get guardianQA9OneHour => '1 Stunde';

  @override
  String get guardianQA9TwoHours => '2 Stunden';

  @override
  String get guardianQA9ThreeHours => '3 Stunden';

  @override
  String get guardianQA9Hours => 'Stunden';

  @override
  String get cameraAccessTitle => 'Kamerazugriff';

  @override
  String get cameraAccessDeniedMessage =>
      'Kamerazugriff wurde verweigert. Bitte aktivieren Sie die Kamera in den Einstellungen.';

  @override
  String get cameraAccessDeniedMessageQR =>
      'Kamerazugriff wurde verweigert. Bitte aktivieren Sie die Kamera in den Einstellungen zum Scannen von QR-Codes.';

  @override
  String get openSettings => 'Einstellungen öffnen';

  @override
  String suggestQA9DoneMessage(String elder) {
    return 'Sie können die Aktivitäten von $elder über unser Kommunikationsboard einsehen.';
  }

  @override
  String qaDoneMessage(String elder) {
    return 'Danke für Ihre Antworten.\nIch werde mein Bestes geben, um in Ihrer Abwesenheit ein guter Betreuer für $elder zu sein.\nIch werde Sie informieren, wenn ich weitere Informationen benötige.\nVielen Dank.';
  }

  @override
  String get nonGuardianQA2 => 'Wann hast du Geburtstag?';

  @override
  String get nonGuardianQA3 => 'Wie soll ich dich nennen?';

  @override
  String get nonGuardianQA4 =>
      'Lass mich wissen, wobei ich mich um dich kümmern soll.';

  @override
  String get nonGuardianQA4HealthMedicineQuestion => 'Medikamente nötig?';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion =>
      'Vitamine / Nahrungsergänzungsmittel nötig?';

  @override
  String get nonGuardianQA4HealthNeedsHeading =>
      'Bitte teilen Sie uns mit, wenn Sie folgendes benötigen';

  @override
  String get nonGuardianQA5 =>
      'Interessieren Sie sich für die folgenden Hobbys?';

  @override
  String get nonGuardianQA6 =>
      'Sollen wir im Notfall einen Anruf tätigen oder eine Benachrichtigung an Freunde oder Verwandte senden?';

  @override
  String get qaNonDoneMessage =>
      'Danke für Ihre Antworten.\nIch werde mein Bestes geben, um ein guter Betreuer für Sie zu sein.\nVielen Dank.';
}
