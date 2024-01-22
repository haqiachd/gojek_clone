import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/models.dart';

List<BottomNavModel> bottomNavData = [
  BottomNavModel(
    label: 'Beranda',
    icon: GojekImage.bottom_home,
    activeIcon: GojekImage.bottom_home_active,
    width: 25,
    height: 25,
  ),
    BottomNavModel(
    label: 'Promo',
    icon: GojekImage.bottom_promo,
    activeIcon: GojekImage.bottom_promo_active,
    width: 25,
    height: 25,
  ),
    BottomNavModel(
    label: 'Pesanan',
    icon: GojekImage.bottom_pesanan,
    activeIcon: GojekImage.bottom_pesanan_active,
    width: 25,
    height: 25,
  ),
    BottomNavModel(
    label: 'Chat',
    icon: GojekImage.bottom_chat,
    activeIcon: GojekImage.bottom_chat_active,
    width: 25,
    height: 25,
  )
];
