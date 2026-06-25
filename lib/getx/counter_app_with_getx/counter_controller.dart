import 'package:get/get.dart';

class CounterController extends GetxController{
  // GetxController = GetX ka controller base class
  // Isme state aur logic rakhte hain
  RxInt count = RxInt(0);
  // Reactive variable
  // Value change hote hi UI update ho jayegi
  void increment(){
    count++;
  }
  void decrement(){
    count--;
  }
  @override
  void onInit() {
    super.onInit();
    print("Controller Initialized");
  }
  // Use:
  // API call
  // Initial data load


  // Jab UI render ho jaye.
  @override
  void onReady() {
    super.onReady();
    print("UI Ready");
  }



  // Controller destroy hone se pehle.
  @override
  void onClose() {
    print("Controller Removed");
    super.onClose();
  }

  // Use:
  // Dispose TextEditingController
  // Close Stream

}



//
// Interview Answer
//
// GetxController GetX ka controller class hai jo application ki state aur business logic ko manage karta hai. ------
// Isme lifecycle methods (onInit, onReady, onClose) available hote hain aur ye UI ko business logic se separate rakhta hai.
//
// Most Used Methods
// Get.put(HomeController());   // Register
//
// Get.find<HomeController>();  // Get Controller
//
// onInit();                    // Initialize
//
// onReady();                   // UI Ready
//
// onClose();                   // Dispose
//
// Flutter interview me agar GetX poocha jaye to GetxController + Obx + .obs + Get.put() + Get.find() sabse important topics hain.