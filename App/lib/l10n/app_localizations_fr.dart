// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appNameLauncher => 'Être Avec Moi - (Aînés)';

  @override
  String get splashTitle => 'Être Avec Moi';

  @override
  String get splashElders => '(Aînés)';

  @override
  String get welcomeDeviceIdLabel => 'ID de l\'appareil :';

  @override
  String get welcomeRoleGuardian => 'Je suis le Tuteur';

  @override
  String get welcomeRoleElderlyWithGuardian =>
      'Je suis la personne âgée\net j\'ai un Tuteur';

  @override
  String get welcomeRoleElderlyNoGuardian =>
      'Je suis la personne âgée\net je n\'ai pas de Tuteur';

  @override
  String get welcomeContinue => 'Continuer';

  @override
  String get welcomeDisclaimerPrefix =>
      'En cliquant sur Continuer, vous acceptez\nnos ';

  @override
  String get welcomeTermsOfService => 'Conditions d\'utilisation';

  @override
  String get welcomeDisclaimerAnd => ' et notre ';

  @override
  String get welcomePrivacyPolicy => 'Politique de\nconfidentialité';

  @override
  String get dialogOk => 'OK';

  @override
  String get dialogCancel => 'Annuler';

  @override
  String get dialogBack => 'Retour';

  @override
  String get dialogNext => 'Suivant';

  @override
  String get suggestGuardianRegisterFirst =>
      'Veuillez demander à votre Tuteur de s\'inscrire d\'abord.';

  @override
  String get pleaseSelectAvatar => 'Veuillez sélectionner un avatar.';

  @override
  String get nameLabel => 'Nom';

  @override
  String get relationshipLabel => 'Relation';

  @override
  String get yesIAgree => 'Oui, j\'accepte';

  @override
  String get guardianHelloSentence =>
      'Hello,\n\nNice to meet you!\nI\'m glad to accompany you from now on.\nI would like to introduce myself.\nI\'m the Guardian who will help you take care of your beloved relative.\n\nTo be able to become a helpful Guardian,\nI will need your help to answer a few questions about you and your relative.\nPlease be prepared before moving to the next step.\n\nThanks for your giving me a chance to serve you!';

  @override
  String get nonGuardianHelloSentence =>
      'Hello,\n\nNice to meet you!\nI\'m the Guardian who will accompany you from now on.\nPlease kindly answer a few questions to help me know about you well and become a helpful Guardian.\n\nPlease be prepared before moving to the next step.\n\nThanks for giving me a chance to serve you!';

  @override
  String get guardianQA1 => 'Quel est votre nom, s\'il vous plaît ?';

  @override
  String get guardianQA2 => 'Quelle est votre relation avec la personne âgée ?';

  @override
  String get qa2ElderLabel => 'La personne âgée est :';

  @override
  String get qa2YouAreLabel => 'Vous êtes :';

  @override
  String get qa2ElderDaddy => 'Papa';

  @override
  String get qa2ElderMommy => 'Maman';

  @override
  String get qa2ElderGrandpa => 'Papi';

  @override
  String get qa2ElderGrandma => 'Mamie';

  @override
  String get qa2ElderOther => 'Autre';

  @override
  String get qa2YouSon => 'Fils';

  @override
  String get qa2YouDaughter => 'Fille';

  @override
  String get qa2YouNephew => 'Neveu';

  @override
  String get qa2YouNiece => 'Nièce';

  @override
  String get qa2OtherHint => 'Veuillez préciser';

  @override
  String get qa2OtherRequired =>
      'Veuillez saisir une valeur lorsque \"Autre\" est sélectionné.';

  @override
  String guardianQA3(String elder) {
    return 'Quel est le nom de votre $elder ?';
  }

  @override
  String guardianQA4(String elder) {
    return 'Quelle est la date de naissance de votre $elder ?';
  }

  @override
  String guardianQA5(String elder) {
    return 'Dites-moi ce que vous voulez que je prenne en charge pour votre $elder.';
  }

  @override
  String get guardianQA5DailyActivities => 'Activités quotidiennes';

  @override
  String get guardianQA5Health => 'Santé';

  @override
  String get guardianQA5Done => 'Terminé';

  @override
  String get guardianQA5Breakfast => 'Petit-déjeuner';

  @override
  String get guardianQA5Lunch => 'Déjeuner';

  @override
  String get guardianQA5Dinner => 'Dîner';

  @override
  String get guardianQA5Super => 'Souper';

  @override
  String get guardianQA5DrinkWater => 'Boire de l\'eau';

  @override
  String get guardianQA5DoExercise => 'Faire de l\'exercice';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return 'Votre $elder doit-il prendre des médicaments ?';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return 'Votre $elder doit-il prendre des vitamines/compléments ?';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return 'Dites-nous si votre $elder a besoin de';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure => 'Prendre la tension';

  @override
  String get guardianQA5HealthCheckBloodSugar => 'Contrôler la glycémie';

  @override
  String get guardianQA5HealthMonitorHeartRate =>
      'Surveiller le rythme cardiaque';

  @override
  String get guardianQA5HealthCheckBodyTemp => 'Prendre la température';

  @override
  String get guardianQA5HealthWeigh => 'Se peser';

  @override
  String get guardianQA5HealthTrackSpO2 =>
      'Suivre la saturation en oxygène (SpO2)';

  @override
  String guardianQA6(String elder) {
    return 'Quels sont les loisirs de $elder ?';
  }

  @override
  String get guardianQA6ReadingBooks => 'Lire des livres';

  @override
  String get guardianQA6Writing => 'Écrire';

  @override
  String get guardianQA6ListeningToRadio => 'Écouter la radio';

  @override
  String get guardianQA6WatchingFilms => 'Regarder des films';

  @override
  String get guardianQA6Praying => 'Prière';

  @override
  String get guardianQA6Meditation => 'Méditation';

  @override
  String get guardianQA6GrowingPlants => 'Jardiner';

  @override
  String guardianQA7(String elder) {
    return 'Y a-t-il quelqu\'un ou quelque chose qui compte le plus pour $elder ? Si oui, partagez-le avec moi.';
  }

  @override
  String guardianQA8(String elder) {
    return 'Voulez-vous recevoir un rapport quotidien sur les activités de $elder ?';
  }

  @override
  String get guardianQA8Yes => 'Oui';

  @override
  String get guardianQA8No => 'Non';

  @override
  String guardianQA9(String elder) {
    return 'Je vous enverrai une notification si $elder ne me répond pas dans';
  }

  @override
  String get guardianQA9OneHour => '1 heure';

  @override
  String get guardianQA9TwoHours => '2 heures';

  @override
  String get guardianQA9ThreeHours => '3 heures';

  @override
  String get guardianQA9Hours => 'heures';

  @override
  String get cameraAccessTitle => 'Accès à la caméra';

  @override
  String get cameraAccessDeniedMessage =>
      'L\'accès à la caméra a été refusé. Veuillez l\'activer dans Réglages pour utiliser la caméra.';

  @override
  String get cameraAccessDeniedMessageQR =>
      'L\'accès à la caméra a été refusé. Veuillez l\'activer dans Réglages pour scanner les codes QR.';

  @override
  String get openSettings => 'Ouvrir Réglages';

  @override
  String suggestQA9DoneMessage(String elder) {
    return 'Vous pouvez consulter les activités de $elder via notre tableau de communication.';
  }

  @override
  String qaDoneMessage(String elder) {
    return 'Merci pour vos réponses.\nJe ferai de mon mieux pour être un bon gardien pour $elder en votre absence.\nJe vous informerai si j\'ai besoin de plus d\'informations.\nMerci.';
  }

  @override
  String get nonGuardianQA2 => 'Quelle est votre date de naissance ?';

  @override
  String get nonGuardianQA3 => 'Comment souhaitez-vous que je vous appelle ?';

  @override
  String get nonGuardianQA4 =>
      'Dites-moi ce que vous voulez que je fasse pour prendre soin de vous.';

  @override
  String get nonGuardianQA4HealthMedicineQuestion =>
      'Besoin de prendre des médicaments ?';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion =>
      'Besoin de prendre des vitamines / compléments alimentaires ?';

  @override
  String get nonGuardianQA4HealthNeedsHeading =>
      'Veuillez nous indiquer si vous avez besoin de';

  @override
  String get nonGuardianQA5 => 'Les loisirs ci-dessous vous intéressent-ils ?';

  @override
  String get nonGuardianQA6 =>
      'Voulez-vous que j\'appelle ou envoie une notification à des amis ou des proches en cas de besoin urgent ?';

  @override
  String get qaNonDoneMessage =>
      'Merci pour vos réponses.\nJe ferai de mon mieux pour être un bon gardien pour vous.\nMerci.';
}
