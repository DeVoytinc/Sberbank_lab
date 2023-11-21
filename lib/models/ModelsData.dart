import 'package:sberbank_lab/models/SubscriptionModel.dart';
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


  static List<Subscription> subscriptions =
  [
    Subscription(
      imageName: 'lib/images/sber_prime.png',  
      title: 'СберПрайм', 
      subtitle: 'Платеж 9 июля',
      money: '199Р в месяц'
    ),
    Subscription(
      imageName: 'lib/images/percent_fill.png',  
      title: 'Переводы', 
      subtitle: 'Автопродление 21 августа',
      money: '199Р в месяц'
    ),
  ];



  static List<String> tagslist =
  [
    'Еда',
    'Саморазвитие',
    'Технологии',
    'Дом',
    'Досуг',
    'Забота о себе',
    'Наука',
  ];

  static Map<String, bool> getTagsMap (){
    return { for (var v in tagslist) v : false };
  } 

  static Map<String, bool> tags = getTagsMap();
  
}
