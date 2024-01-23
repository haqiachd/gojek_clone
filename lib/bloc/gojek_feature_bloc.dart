import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/event/events.dart';
import 'package:gojek_clone/ui/pages/second/second.dart';

class GojekFeatureBloc extends Bloc<GojekFeatureEvent, Widget> {
  Widget _widget = const Text('def');
  GojekFeatureBloc() : super(const Text('Defaut'));

  @override
  Stream<Widget> mapEventToState(GojekFeatureEvent event) async* {
    switch (event) {
      case GojekFeatureEvent.feature_goride:
        _widget = const GojekFeaturePage(
          title: 'GoRide',
        );
        break;
      case GojekFeatureEvent.feature_gocar:
        _widget = const GojekFeaturePage(
          title: 'GoCar',
        );
        break;
      case GojekFeatureEvent.feature_gofood:
        _widget = const GojekFeaturePage(
          title: 'GoFood',
        );
        break;
      case GojekFeatureEvent.feature_gosend:
        _widget = const GojekFeaturePage(
          title: 'GoSend',
        );
        break;
      case GojekFeatureEvent.feature_gomart:
        _widget = const GojekFeaturePage(
          title: 'GoMart',
        );
        break;
      case GojekFeatureEvent.feature_gotagihan:
        _widget = const GojekFeaturePage(
          title: 'GoTagihan',
        );
        break;
      case GojekFeatureEvent.feature_goshop:
        _widget = const GojekFeaturePage(
          title: 'GoShop',
        );

        break;
      case GojekFeatureEvent.feature_lainya:
        _widget = const GojekFeaturePage(
          title: 'Lainnya',
        );
        break;
      default:
        _widget = const GojekFeaturePage(
          title: 'error',
        );
        break;
    }
    yield _widget;
  }
}
