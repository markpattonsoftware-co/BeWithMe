// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appNameLauncher => 'Fique Comigo - (Idosos)';

  @override
  String get splashTitle => 'Fique Comigo';

  @override
  String get splashElders => '(Idosos)';

  @override
  String get welcomeDeviceIdLabel => 'ID do dispositivo:';

  @override
  String get welcomeRoleGuardian => 'Eu sou o Guardião';

  @override
  String get welcomeRoleElderlyWithGuardian =>
      'Eu sou o idoso e\ntenho um Guardião';

  @override
  String get welcomeRoleElderlyNoGuardian =>
      'Eu sou o idoso e\nnão tenho Guardião';

  @override
  String get welcomeContinue => 'Continuar';

  @override
  String get welcomeDisclaimerPrefix =>
      'Ao clicar em Continuar, você concorda com\nnossos ';

  @override
  String get welcomeTermsOfService => 'Termos de Serviço';

  @override
  String get welcomeDisclaimerAnd => ' e a ';

  @override
  String get welcomePrivacyPolicy => 'Política de\nPrivacidade';

  @override
  String get dialogOk => 'OK';

  @override
  String get dialogCancel => 'Cancelar';

  @override
  String get dialogBack => 'Voltar';

  @override
  String get dialogNext => 'Próximo';

  @override
  String get suggestGuardianRegisterFirst =>
      'Peça ao seu Guardião para se registrar primeiro.';

  @override
  String get pleaseSelectAvatar => 'Por favor, selecione um avatar.';

  @override
  String get nameLabel => 'Nome';

  @override
  String get relationshipLabel => 'Parentesco';

  @override
  String get yesIAgree => 'Sim, eu concordo';

  @override
  String get guardianHelloSentence =>
      'Olá,\n\nPrazer em conhecê-lo(a)!\nFico feliz em acompanhá-lo(a) a partir de agora.\nGostaria de me apresentar.\nSou o Guardião que ajudará você a cuidar do seu ente querido.\n\nPara me tornar um Guardião útil,\npreciso da sua ajuda para responder algumas perguntas sobre você e seu familiar.\nPor favor, prepare-se antes de passar para a próxima etapa.\n\nObrigado por me dar a chance de servi-lo(a)!';

  @override
  String get nonGuardianHelloSentence =>
      'Olá,\n\nPrazer em conhecê-lo(a)!\nSou o Guardião que o(a) acompanhará a partir de agora.\nPor favor responda algumas perguntas para que eu possa conhecê-lo(a) bem e me tornar um Guardião útil.\n\nPor favor, prepare-se antes de passar para a próxima etapa.\n\nObrigado por me dar a chance de servi-lo(a)!';

  @override
  String get guardianQA1 => 'Qual é o seu nome, por favor?';

  @override
  String get guardianQA2 => 'Qual é o seu parentesco com o idoso?';

  @override
  String get qa2ElderLabel => 'O idoso é:';

  @override
  String get qa2YouAreLabel => 'Você é:';

  @override
  String get qa2ElderDaddy => 'Pai';

  @override
  String get qa2ElderMommy => 'Mãe';

  @override
  String get qa2ElderGrandpa => 'Avô';

  @override
  String get qa2ElderGrandma => 'Avó';

  @override
  String get qa2ElderOther => 'Outro';

  @override
  String get qa2YouSon => 'Filho';

  @override
  String get qa2YouDaughter => 'Filha';

  @override
  String get qa2YouNephew => 'Sobrinho';

  @override
  String get qa2YouNiece => 'Sobrinha';

  @override
  String get qa2OtherHint => 'Por favor especifique';

  @override
  String get qa2OtherRequired =>
      'Introduza um valor quando \"Outro\" estiver selecionado.';

  @override
  String guardianQA3(String elder) {
    return 'Qual é o nome do seu $elder?';
  }

  @override
  String guardianQA4(String elder) {
    return 'Qual é a data de nascimento do seu $elder?';
  }

  @override
  String guardianQA5(String elder) {
    return 'Diga-me o que você quer que eu cuide do seu $elder.';
  }

  @override
  String get guardianQA5DailyActivities => 'Atividades diárias';

  @override
  String get guardianQA5Health => 'Saúde';

  @override
  String get guardianQA5Done => 'Concluído';

  @override
  String get guardianQA5Breakfast => 'Café da manhã';

  @override
  String get guardianQA5Lunch => 'Almoço';

  @override
  String get guardianQA5Dinner => 'Jantar';

  @override
  String get guardianQA5Super => 'Ceia';

  @override
  String get guardianQA5DrinkWater => 'Beber água';

  @override
  String get guardianQA5DoExercise => 'Fazer exercício';

  @override
  String guardianQA5HealthMedicineQuestion(String elder) {
    return 'O seu $elder precisa tomar medicamentos?';
  }

  @override
  String guardianQA5HealthVitaminsQuestion(String elder) {
    return 'O seu $elder precisa tomar vitaminas/suplementos?';
  }

  @override
  String guardianQA5HealthNeedsHeading(String elder) {
    return 'Diga-nos se o seu $elder precisa de';
  }

  @override
  String get guardianQA5HealthMeasureBloodPressure =>
      'Medir a pressão arterial';

  @override
  String get guardianQA5HealthCheckBloodSugar => 'Verificar a glicemia';

  @override
  String get guardianQA5HealthMonitorHeartRate =>
      'Monitorizar a frequência cardíaca';

  @override
  String get guardianQA5HealthCheckBodyTemp => 'Medir a temperatura corporal';

  @override
  String get guardianQA5HealthWeigh => 'Pesar';

  @override
  String get guardianQA5HealthTrackSpO2 =>
      'Registar a saturação de oxigénio (SpO2)';

  @override
  String guardianQA6(String elder) {
    return 'Quais são os passatempos de $elder?';
  }

  @override
  String get guardianQA6ReadingBooks => 'Ler livros';

  @override
  String get guardianQA6Writing => 'Escrever';

  @override
  String get guardianQA6ListeningToRadio => 'Ouvir rádio';

  @override
  String get guardianQA6WatchingFilms => 'Ver filmes';

  @override
  String get guardianQA6Praying => 'Rezar';

  @override
  String get guardianQA6Meditation => 'Meditação';

  @override
  String get guardianQA6GrowingPlants => 'Cultivar plantas';

  @override
  String guardianQA7(String elder) {
    return 'Existe alguém ou algo que $elder valorize mais? Se sim, partilhe comigo.';
  }

  @override
  String guardianQA8(String elder) {
    return 'Deseja receber um relatório diário sobre as atividades de $elder?';
  }

  @override
  String get guardianQA8Yes => 'Sim';

  @override
  String get guardianQA8No => 'Não';

  @override
  String guardianQA9(String elder) {
    return 'Enviar-lhe-ei uma notificação se o seu $elder não me responder dentro de';
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
  String get cameraAccessTitle => 'Acesso à câmara';

  @override
  String get cameraAccessDeniedMessage =>
      'O acesso à câmara foi negado. Ative nas Definições para usar a câmara.';

  @override
  String get cameraAccessDeniedMessageQR =>
      'O acesso à câmara foi negado. Ative nas Definições para digitalizar códigos QR.';

  @override
  String get openSettings => 'Abrir Definições';

  @override
  String suggestQA9DoneMessage(String elder) {
    return 'Pode ver as atividades do seu $elder através do nosso quadro de comunicação.';
  }

  @override
  String qaDoneMessage(String elder) {
    return 'Obrigado pelas suas respostas.\nFarei o meu melhor para ser um bom guardião do seu $elder durante a sua ausência.\nAvisarei se precisar de mais informações.\nObrigado.';
  }

  @override
  String get nonGuardianQA2 => 'Quando é o seu aniversário?';

  @override
  String get nonGuardianQA3 => 'Como gostaria que eu o chamasse?';

  @override
  String get nonGuardianQA4 => 'Diga-me como quer que eu cuide de si.';

  @override
  String get nonGuardianQA4HealthMedicineQuestion =>
      'Precisa de tomar medicamentos?';

  @override
  String get nonGuardianQA4HealthVitaminsQuestion =>
      'Precisa de tomar vitaminas ou suplementos alimentares?';

  @override
  String get nonGuardianQA4HealthNeedsHeading =>
      'Por favor diga-nos se precisar de';

  @override
  String get nonGuardianQA5 => 'Interessa-lhe algum dos passatempos abaixo?';

  @override
  String get nonGuardianQA6 =>
      'Quer que eu faça uma chamada ou envie uma notificação a amigos ou familiares caso precise de ajuda urgente?';

  @override
  String get qaNonDoneMessage =>
      'Obrigado pelas suas respostas.\nFarei o meu melhor para ser um bom guardião para si.\nObrigado.';
}
