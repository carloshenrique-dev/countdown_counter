import 'package:countdown_counter/app/modules/module.dart';
import 'package:get/get.dart';
import 'countdown_bindings.dart';
import 'countdown_page.dart';

class CountdownModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
        name: '/countdown',
        page: () => const CountdownPage(),
        binding: CountdownBindings()),
  ];
}
