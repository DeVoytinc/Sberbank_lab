import 'package:sberbank_lab/models/TariffsAndLimitsItemModel.dart';


class ModelsData{
  static List<TariffsAndLimitsItemModel> tariffsAndLimitsList =
  [
    TariffsAndLimitsItemModel(
      imageName: 'lib/images/speedometer.svg',  
      title: 'Изменить суточный лимит', 
      subtitle: 'На платежи и переводы'
    ),
    TariffsAndLimitsItemModel(
      imageName: 'lib/images/percent.svg',  
      title: 'Переводы без комиссии', 
      subtitle: 'Показать остаток в этом месяце'
    ),
    TariffsAndLimitsItemModel(
      imageName: 'lib/images/arrows_forward_back.svg',  
      title: 'Информация о тарифахи лимитах', 
      subtitle: ''
    ),
  ];

   static List<String> tags =
  [
    'Еда',
    'Саморазвитие',
    'Технологии',
    'Дом',
    'Досуг',
    'Забота о себе',
    'Наука',
  ];
}
