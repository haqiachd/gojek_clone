import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/gopay_menu_model.dart';

List<GopayMenuModel> gopayMenu = [
  GopayMenuModel(
    title: 'Bayar',
    icon: GojekImage.gopay_bayar,
    width: 10,
    height: 10,
    indicator: false,
    indicatorValues: 2,
    radius: 6,
  ),
  GopayMenuModel(
    title: 'Top Up',
    icon: GojekImage.gopay_topup,
    width: 10,
    height: 10,
    indicator: false,
    indicatorValues: 3,
    radius: 6,
  ),
  GopayMenuModel(
    title: 'Lainnya',
    icon: GojekImage.gopay_others,
    width: 10,
    height: 3,
    indicator: true,
    indicatorValues: 3,
    radius: 20,
  )
];
