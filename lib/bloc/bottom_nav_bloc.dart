import 'package:bloc/bloc.dart';
import 'package:gojek_clone/event/events.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, int> {
  // Widget _widget = const Text('error');
  int _pos = 0;

  BottomNavBloc() : super(0);

  @override
  Stream<int> mapEventToState(BottomNavEvent event) async* {
    switch (event) {
      case BottomNavEvent.main_bottom_nav_beranda:
        // _widget = const HomePage();
        _pos = 0;
        break;
      case BottomNavEvent.main_bottom_nav_promo:
        // _widget = const PromoPage();
        _pos = 1;
        break;
      case BottomNavEvent.main_bottom_nav_pesanan:
        // _widget = const PesananPage();
        _pos = 2;
        break;
      case BottomNavEvent.main_bottom_nav_chat:
        // _widget = const ChatPage();
        _pos = 3;
        break;
      default:
        // _widget = const Text('ERROR');
        _pos = 0;
        break;
    }
    yield _pos;
  }
}
