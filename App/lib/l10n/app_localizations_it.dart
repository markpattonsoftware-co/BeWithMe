// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appNameLauncher => 'Stai Con Me - (Anziani)';

  @override
  String get splashTitle => 'Stai Con Me';

  @override
  String get splashElders => '(Anziani)';

  @override
  String get welcomeDeviceIdLabel => 'ID dispositivo:';

  @override
  String get welcomeRoleGuardian => 'Sono il Tutore';

  @override
  String get welcomeRoleElderlyWithGuardian =>
      'Sono l\'anziano e\nho un Tutore';

  @override
  String get welcomeRoleElderlyNoGuardian =>
      'Sono l\'anziano e\nnon ho un Tutore';

  @override
  String get welcomeContinue => 'Continua';

  @override
  String get welcomeDisclaimerPrefix =>
      'Cliccando su Continua, accetti i nostri ';

  @override
  String get welcomeTermsOfService => 'Termini di servizio';

  @override
  String get welcomeDisclaimerAnd => ' e la ';

  @override
  String get welcomePrivacyPolicy => 'Informativa sulla\nprivacy';

  @override
  String get dialogOk => 'OK';

  @override
  String get dialogCancel => 'Annulla';

  @override
  String get dialogBack => 'Indietro';

  @override
  String get dialogNext => 'Avanti';

  @override
  String get suggestGuardianRegisterFirst =>
      'Chiedi al tuo Tutore di registrarsi prima.';

  @override
  String get pleaseSelectAvatar => 'Seleziona un avatar.';

  @override
  String get nameLabel => 'Nome';

  @override
  String get relationshipLabel => 'Rapporto';

  @override
  String get yesIAgree => 'Sì, accetto';

  @override
  String get guardianHelloSentence =>
      'Ciao,\n\nPiacere di conoscerti!\nSono lieto di accompagnarti da ora in poi.\nVorrei presentarmi.\nSono il Tutore che ti aiuterà a prenderti cura del tuo caro.\n\nPer diventare un Tutore utile,\navrò bisogno del tuo aiuto per rispondere ad alcune domande su di te e sul tuo familiare.\nPreparati prima di passare al passaggio successivo.\n\nGrazie per darmi l\'opportunità di servirti!';

  @override
  String get nonGuardianHelloSentence =>
      'Ciao,\n\nPiacere di conoscerti!\nSono il Tutore che ti accompagnerà da ora in poi.\nRispondi gentilmente ad alcune domande per aiutarmi a conoscerti bene e diventare un Tutore utile.\n\nPreparati prima di passare al passaggio successivo.\n\nGrazie per darmi l\'opportunità di servirti!';

  @override
  String get guardianQA1 => 'Come ti chiami, per favore?';

  @override
  String get guardianQA2 => 'Qual è il tuo rapporto con l\'anziano?';

  @override
  String get qa2ElderLabel => 'L\'anziano è:';

  @override
  String get qa2YouAreLabel => 'Tu sei:';

  @override
  String get qa2ElderDaddy => 'Papà';

  @override
  String get qa2ElderMommy => 'Mamma';

  @override
  String get qa2ElderGrandpa => 'Nonno';

  @override
  String get qa2ElderGrandma => 'Nonna';

  @override
  String get qa2ElderOther => 'Altro';

  @override
  String get qa2YouSon => 'Figlio';

  @override
  String get qa2YouDaughter => 'Figlia';

  @override
  String get qa2YouNephew => 'Nipote';

  @override
  String get qa2YouNiece => 'Nipote';

  @override
  String get qa2OtherHint => 'Si prega di specificare';

  @override
  String get qa2OtherRequired =>
      'Inserire un valore quando \"Altro\" è selezionato.';

  @override
  String guardianQA3(String elder) {
    return 'Qual è il nome del tuo $elder?';
  }

  @override
  String guardianQA4(String elder) {
    return 'Qual è il compleanno del tuo $elder?';
  }

  @override
  String guardianQA5(String elder) {
    return 'Fammi sapere di cosa vuoi che mi prenda cura per il tuo $elder.';
  }

  @override
  String get guardianQA5DailyActivities => 'Attività quotidiane';

  @override
  String get guardianQA5Health => 'Salute';

  @override
  String get guardianQA5Done => 'Fatto';

  @override
  String get guardianQA5Breakfast => 'Colazione';

  @override
  String get guardianQA5Lunch => 'Pranzo';

  @override
  String get guardianQA5Dinner => 'Cena';

  @override
  String get guardianQA5Super => 'Cena serale';

  @override
  String get guardianQA5DrinkWater => 'Bere acqua';

  @override
  String get guardianQA5DoExercise => 'Fare esercizio';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return 'Il tuo $elder deve prendere medicine?';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return 'Il tuo $elder deve prendere vitamine/integratori?';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return 'Facci sapere se il tuo $elder ha bisogno di';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure => 'Misurare la pressione';

  @override
  String get guardianQA5HealthCheckBloodSugar => 'Controllare la glicemia';

  @override
  String get guardianQA5HealthMonitorHeartRate =>
      'Monitorare la frequenza cardiaca';

  @override
  String get guardianQA5HealthCheckBodyTemp =>
      'Misurare la temperatura corporea';

  @override
  String get guardianQA5HealthWeigh => 'Pesarsi';

  @override
  String get guardianQA5HealthTrackSpO2 => 'Monitorare la saturazione (SpO2)';

  @override
  String guardianQA6(String elder) {
    return 'Quali sono gli hobby di $elder?';
  }

  @override
  String get guardianQA6ReadingBooks => 'Leggere libri';

  @override
  String get guardianQA6Writing => 'Scrivere';

  @override
  String get guardianQA6ListeningToRadio => 'Ascoltare la radio';

  @override
  String get guardianQA6WatchingFilms => 'Guardare film';

  @override
  String get guardianQA6Praying => 'Pregare';

  @override
  String get guardianQA6Meditation => 'Meditazione';

  @override
  String get guardianQA6GrowingPlants => 'Coltivare piante';

  @override
  String guardianQA7(String elder) {
    return 'C\'è qualcuno o qualcosa a cui $elder tiene di più? Se sì, condividilo con me.';
  }

  @override
  String guardianQA8(String elder) {
    return 'Vuoi ricevere un report giornaliero sulle attività di $elder?';
  }

  @override
  String get guardianQA8Yes => 'Sì';

  @override
  String get guardianQA8No => 'No';

  @override
  String guardianQA9(String elder) {
    return 'Ti invierò una notifica se $elder non mi risponde entro';
  }

  @override
  String get guardianQA9OneHour => '1 ora';

  @override
  String get guardianQA9TwoHours => '2 ore';

  @override
  String get guardianQA9ThreeHours => '3 ore';

  @override
  String get guardianQA9Hours => 'ore';

  @override
  String get cameraAccessTitle => 'Accesso alla fotocamera';

  @override
  String get cameraAccessDeniedMessage =>
      'L\'accesso alla fotocamera è stato negato. Abilitala in Impostazioni per usare la fotocamera.';

  @override
  String get cameraAccessDeniedMessageQR =>
      'L\'accesso alla fotocamera è stato negato. Abilitala in Impostazioni per scansionare i codici QR.';

  @override
  String get openSettings => 'Apri Impostazioni';

  @override
  String suggestQA9DoneMessage(String elder) {
    return 'Puoi consultare le attività di $elder tramite la nostra bacheca di comunicazione.';
  }

  @override
  String qaDoneMessage(String elder) {
    return 'Grazie per le tue risposte.\nFarò del mio meglio per essere un buon guardiano per $elder durante la tua assenza.\nTi avviserò se ho bisogno di ulteriori informazioni.\nGrazie.';
  }

  @override
  String get nonGuardianQA2 => 'Quando è il tuo compleanno?';

  @override
  String get nonGuardianQA3 => 'Come vorresti che ti chiamassi?';

  @override
  String get nonGuardianQA4 => 'Dimmi come vuoi che mi prenda cura di te.';

  @override
  String get nonGuardianQA4HealthMedicineQuestion => 'Devi prendere medicine?';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion =>
      'Devi prendere vitamine o integratori?';

  @override
  String get nonGuardianQA4HealthNeedsHeading =>
      'Facci sapere se hai bisogno di';

  @override
  String get nonGuardianQA5 => 'Ti interessano gli hobby qui sotto?';

  @override
  String get nonGuardianQA6 =>
      'Vuoi che chiami o invii una notifica ad amici o parenti in caso tu abbia bisogno di aiuto urgente?';

  @override
  String get qaNonDoneMessage =>
      'Grazie per le tue risposte.\nFarò del mio meglio per essere un buon guardiano per te.\nGrazie.';
}
