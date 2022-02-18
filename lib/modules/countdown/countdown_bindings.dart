import 'package:get/get.dart';
import './countdown_controller.dart';

class CountdownBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(CountdownController());
    }
}