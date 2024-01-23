import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/gojek_feature_model.dart';
import 'package:gojek_clone/event/events.dart';

List<GojekFeatureModel> gojekFeature = [
  GojekFeatureModel(
    title: 'GoRide',
    icon: GojekImage.featureGoride,
    width: 46,
    height: 54,
    event: GojekFeatureEvent.feature_goride,
  ),
  GojekFeatureModel(
    title: 'GoCar',
    icon: GojekImage.featureGocar,
    width: 55,
    height: 56,
    event: GojekFeatureEvent.feature_gocar,
  ),
  GojekFeatureModel(
    title: 'GoFood',
    icon: GojekImage.featureGofood,
    width: 53,
    height: 51,
    event: GojekFeatureEvent.feature_gofood,
  ),
  GojekFeatureModel(
    title: 'GoSend',
    icon: GojekImage.featureGosend,
    width: 51,
    height: 53,
    event: GojekFeatureEvent.feature_gosend,
  ),
  GojekFeatureModel(
    title: 'GoMart',
    icon: GojekImage.featureGomart,
    width: 56,
    height: 53,
    event: GojekFeatureEvent.feature_gomart,
  ),
  GojekFeatureModel(
    title: 'GoTagihan',
    icon: GojekImage.featureGotagihan,
    width: 48,
    height: 53,
    event: GojekFeatureEvent.feature_gotagihan,
  ),
  GojekFeatureModel(
    title: 'GoShop',
    icon: GojekImage.featureGoshop,
    width: 52,
    height: 53,
    event: GojekFeatureEvent.feature_goshop,
  ),
  GojekFeatureModel(
    title: 'Lainnya',
    icon: GojekImage.featureOthers,
    width: 45,
    height: 45,
    event: GojekFeatureEvent.feature_lainya,
  )
];
