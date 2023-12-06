import 'package:sberbank_lab/models/subscription_model.dart';
import 'package:sberbank_lab/models/tariffs_limits_item_model.dart';


class ModelsData{
  static List<TariffsAndLimitsItemModel> tariffsAndLimitsList =
  [
    const TariffsAndLimitsItemModel(
      imageName: 'assets/images/speedometer.png',  
      title: 'Изменить суточный лимит', 
      subtitle: 'На платежи и переводы'
    ),
    const TariffsAndLimitsItemModel(
      imageName: 'assets/images/percent.png',  
      title: 'Переводы без комиссии', 
      subtitle: 'Показать остаток в этом месяце'
    ),
    const TariffsAndLimitsItemModel(
      imageName: 'assets/images/arrows.png',  
      title: 'Информация о тарифахи лимитах', 
      subtitle: ''
    ),
  ];


  static List<Subscription> subscriptions =
  [
    const Subscription(
      imageName: 'assets/images/sber_prime.png',  
      title: 'СберПрайм', 
      subtitle: 'Платеж 9 июля',
      money: '199Р в месяц'
    ),
    const Subscription(
      imageName: 'assets/images/percent_fill.png',  
      title: 'Переводы', 
      subtitle: 'Автопродление 21 августа',
      money: '199Р в месяц'
    ),
  ];



  static const List<String> _tagslist =
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
    return { for (var v in _tagslist) v : false };
  }   
}
