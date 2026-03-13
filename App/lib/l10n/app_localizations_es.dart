// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appNameLauncher => 'Estar Conmigo - (Mayores)';

  @override
  String get splashTitle => 'Estar Conmigo';

  @override
  String get splashElders => '(Mayores)';

  @override
  String get welcomeDeviceIdLabel => 'ID del dispositivo:';

  @override
  String get welcomeRoleGuardian => 'Yo soy el Guardián';

  @override
  String get welcomeRoleElderlyWithGuardian =>
      'Yo soy el adulto mayor\ny tengo un Guardián';

  @override
  String get welcomeRoleElderlyNoGuardian =>
      'Yo soy el adulto mayor\ny no tengo Guardián';

  @override
  String get welcomeContinue => 'Continuar';

  @override
  String get welcomeDisclaimerPrefix =>
      'Al hacer clic en continuar, acepta\nnuestros ';

  @override
  String get welcomeTermsOfService => 'Términos de Servicio';

  @override
  String get welcomeDisclaimerAnd => ' y ';

  @override
  String get welcomePrivacyPolicy => 'Política de\nPrivacidad';

  @override
  String get dialogOk => 'OK';

  @override
  String get dialogCancel => 'Cancelar';

  @override
  String get dialogBack => 'Atrás';

  @override
  String get dialogNext => 'Siguiente';

  @override
  String get suggestGuardianRegisterFirst =>
      'Por favor, pida a su Guardián que lo registre primero.';

  @override
  String get pleaseSelectAvatar => 'Por favor, seleccione un avatar.';

  @override
  String get nameLabel => 'Nombre';

  @override
  String get relationshipLabel => 'Relación';

  @override
  String get yesIAgree => 'Sí, estoy de acuerdo';

  @override
  String get guardianHelloSentence =>
      'Hola,\n\n¡Mucho gusto!\nMe alegra acompañarte a partir de ahora.\nMe gustaría presentarme.\nSoy el Guardián que te ayudará a cuidar de tu ser querido.\n\nPara poder ser un Guardián útil,\nnecesitaré tu ayuda para responder algunas preguntas sobre ti y tu familiar.\nPor favor, prepárate antes de pasar al siguiente paso.\n\n¡Gracias por darme la oportunidad de servirte!';

  @override
  String get nonGuardianHelloSentence =>
      'Hola,\n\n¡Mucho gusto!\nSoy el Guardián que te acompañará a partir de ahora.\nPor favor responde algunas preguntas para conocerte bien y ser un Guardián útil.\n\nPor favor, prepárate antes de pasar al siguiente paso.\n\n¡Gracias por darme la oportunidad de servirte!';

  @override
  String get guardianQA1 => '¿Cuál es su nombre, por favor?';

  @override
  String get guardianQA2 => '¿Cuál es la relación entre usted y el anciano?';

  @override
  String get qa2ElderLabel => 'El anciano es:';

  @override
  String get qa2YouAreLabel => 'Usted es:';

  @override
  String get qa2ElderDaddy => 'Papá';

  @override
  String get qa2ElderMommy => 'Mamá';

  @override
  String get qa2ElderGrandpa => 'Abuelo';

  @override
  String get qa2ElderGrandma => 'Abuela';

  @override
  String get qa2ElderOther => 'Otro';

  @override
  String get qa2YouSon => 'Hijo';

  @override
  String get qa2YouDaughter => 'Hija';

  @override
  String get qa2YouNephew => 'Sobrino';

  @override
  String get qa2YouNiece => 'Sobrina';

  @override
  String get qa2OtherHint => 'Por favor especifique';

  @override
  String get qa2OtherRequired =>
      'Introduzca un valor cuando \"Otro\" está seleccionado.';

  @override
  String guardianQA3(String elder) {
    return '¿Cuál es el nombre de su $elder?';
  }

  @override
  String guardianQA4(String elder) {
    return '¿Cuál es la fecha de nacimiento de su $elder?';
  }

  @override
  String guardianQA5(String elder) {
    return 'Dígame qué quiere que cuide de su $elder.';
  }

  @override
  String get guardianQA5DailyActivities => 'Actividades diarias';

  @override
  String get guardianQA5Health => 'Salud';

  @override
  String get guardianQA5Done => 'Listo';

  @override
  String get guardianQA5Breakfast => 'Desayuno';

  @override
  String get guardianQA5Lunch => 'Almuerzo';

  @override
  String get guardianQA5Dinner => 'Cena';

  @override
  String get guardianQA5Super => 'Cena tardía';

  @override
  String get guardianQA5DrinkWater => 'Beber agua';

  @override
  String get guardianQA5DoExercise => 'Hacer ejercicio';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return '¿Su $elder necesita tomar medicación?';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return '¿Su $elder necesita tomar vitaminas/suplementos?';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return 'Indíquenos si su $elder necesita';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure =>
      'Medir la presión arterial';

  @override
  String get guardianQA5HealthCheckBloodSugar => 'Controlar el nivel de azúcar';

  @override
  String get guardianQA5HealthMonitorHeartRate =>
      'Controlar la frecuencia cardíaca';

  @override
  String get guardianQA5HealthCheckBodyTemp => 'Medir la temperatura corporal';

  @override
  String get guardianQA5HealthWeigh => 'Pesar';

  @override
  String get guardianQA5HealthTrackSpO2 =>
      'Registrar la saturación de oxígeno (SpO2)';

  @override
  String guardianQA6(String elder) {
    return '¿Cuáles son los pasatiempos de $elder?';
  }

  @override
  String get guardianQA6ReadingBooks => 'Leer libros';

  @override
  String get guardianQA6Writing => 'Escribir';

  @override
  String get guardianQA6ListeningToRadio => 'Escuchar la radio';

  @override
  String get guardianQA6WatchingFilms => 'Ver películas';

  @override
  String get guardianQA6Praying => 'Rezar';

  @override
  String get guardianQA6Meditation => 'Meditación';

  @override
  String get guardianQA6GrowingPlants => 'Cultivar plantas';

  @override
  String guardianQA7(String elder) {
    return '¿Hay alguien o algo que $elder aprecie especialmente? Si es así, compártelo conmigo.';
  }

  @override
  String guardianQA8(String elder) {
    return '¿Quieres recibir un informe diario sobre las actividades de $elder?';
  }

  @override
  String get guardianQA8Yes => 'Sí';

  @override
  String get guardianQA8No => 'No';

  @override
  String guardianQA9(String elder) {
    return 'Te enviaré una notificación si $elder no me responde en';
  }

  @override
  String get guardianQA9OneHour => '1 hora';

  @override
  String get guardianQA9TwoHours => '2 horas';

  @override
  String get guardianQA9ThreeHours => '3 horas';

  @override
  String get guardianQA9Hours => 'horas';

  @override
  String get cameraAccessTitle => 'Acceso a la cámara';

  @override
  String get cameraAccessDeniedMessage =>
      'Se ha denegado el acceso a la cámara. Actívala en Ajustes para usar la cámara.';

  @override
  String get cameraAccessDeniedMessageQR =>
      'Se ha denegado el acceso a la cámara. Actívala en Ajustes para escanear códigos QR.';

  @override
  String get openSettings => 'Abrir Ajustes';

  @override
  String suggestQA9DoneMessage(String elder) {
    return 'Puedes ver las actividades de $elder en nuestro tablón de comunicación.';
  }

  @override
  String qaDoneMessage(String elder) {
    return 'Gracias por tus respuestas.\nHaré todo lo posible por ser un buen guardián de $elder durante tu ausencia.\nTe avisaré si necesito más información.\nGracias.';
  }

  @override
  String get nonGuardianQA2 => '¿Cuál es tu fecha de nacimiento?';

  @override
  String get nonGuardianQA3 => '¿Cómo te gustaría que te llamara?';

  @override
  String get nonGuardianQA4 => 'Dime en qué quieres que te cuide.';

  @override
  String get nonGuardianQA4HealthMedicineQuestion =>
      '¿Necesitas tomar medicación?';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion =>
      '¿Necesitas tomar vitaminas o alimentos funcionales?';

  @override
  String get nonGuardianQA4HealthNeedsHeading =>
      'Por favor indícanos si necesitas';

  @override
  String get nonGuardianQA5 => '¿Te interesan los siguientes pasatiempos?';

  @override
  String get nonGuardianQA6 =>
      '¿Quieres que llame o envíe una notificación a amigos o familiares en caso de que necesites ayuda urgente?';

  @override
  String get qaNonDoneMessage =>
      'Gracias por tus respuestas.\nHaré todo lo posible por ser un buen guardián para ti.\nGracias.';
}
