class BottomNavModel {
  String? label;
  String? icon;
  String? activeIcon;
  double? width;
  double? height;
  double? numOfPos;

  static const String beranda = 'Beranda';
  static const String promo = 'Promo';
  static const String pesanan = 'Pesanan';
  static const String chat = 'Chat';

  BottomNavModel({
    this.label,
    this.icon,
    this.activeIcon,
    this.width,
    this.height,
    this.numOfPos,
  });
}
