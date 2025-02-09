import 'package:get/get.dart';

class TextExpansionController extends GetxController {
  var isExpanded = false.obs;
  toggleExpansion() {
  
      isExpanded.value = !isExpanded.value;
    
  }
}