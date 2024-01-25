import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/event/events.dart';
import 'package:gojek_clone/ui/pages/second/second.dart';

class GojekFeatureBloc extends Bloc<GojekFeatureEvent, Widget> {
  Widget _widget = const Text('def');
  GojekFeatureBloc() : super(const Text('Defaut'));

  @override
  Stream<Widget> mapEventToState(GojekFeatureEvent event) async* {
    switch (event) {
      case GojekFeatureEvent.feature_goride:
        _widget = GojekFeaturePage(
          title: 'GoRide',
          icon: GojekImage.featureGoride,
        );
        break;
      case GojekFeatureEvent.feature_gocar:
        _widget = GojekFeaturePage(
          title: 'GoCar',
          icon: GojekImage.featureGocar,
        );
        break;
      case GojekFeatureEvent.feature_gofood:
        _widget = GojekFeaturePage(
          title: 'GoFood',
          icon: GojekImage.featureGofood,
        );
        break;
      case GojekFeatureEvent.feature_gosend:
        _widget = GojekFeaturePage(
          title: 'GoSend',
          icon: GojekImage.featureGosend,
        );
        break;
      case GojekFeatureEvent.feature_gomart:
        _widget = GojekFeaturePage(
          title: 'GoMart',
          icon: GojekImage.featureGomart,
        );
        break;
      case GojekFeatureEvent.feature_gotagihan:
        _widget = GojekFeaturePage(
          title: 'GoTagihan',
          icon: GojekImage.featureGotagihan,
        );
        break;
      case GojekFeatureEvent.feature_goshop:
        _widget = GojekFeaturePage(
          title: 'GoShop',
          icon: GojekImage.featureGoshop,
        );

        break;
      case GojekFeatureEvent.feature_lainya:
        _widget = GojekFeaturePage(
          title: 'Lainnya',
          icon: GojekImage.featureOthers,
        );
        break;
      default:
        _widget = GojekFeaturePage(
          title: 'error',
          icon: GojekImage.ara,
        );
        break;
    }
    yield _widget;
  }
}
