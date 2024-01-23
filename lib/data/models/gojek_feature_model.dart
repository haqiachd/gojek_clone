import 'package:gojek_clone/event/events.dart';

class GojekFeatureModel {
  String? title;
  String? icon;
  double? width;
  double? height;
  GojekFeatureEvent? event;

  GojekFeatureModel({
    this.title,
    this.icon,
    this.width,
    this.height,
    this.event,
  });
}
