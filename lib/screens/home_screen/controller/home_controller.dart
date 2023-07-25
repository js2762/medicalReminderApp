import 'package:get/get.dart';
import 'package:health/models/added_medicine.dart';
import '/resources/app_images.dart';
import '../../../screens/Add_medicine_screen/add_medicine_view.dart';
import '../../../screens/schedule_screen/schedule_view.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 1.obs;

  RxList<Map<dynamic, dynamic>> serviceList = [
    {'name': 'Consulting', 'imagePath': AppImages.consulting},
    {'name': 'Medicine', 'imagePath': AppImages.medicine},
    {'name': 'Reminder', 'imagePath': AppImages.alarmClock},
  ].obs;
  RxList<AddedMedicine>? addedMedicineDataList = <AddedMedicine>[].obs;

  // HomeController(dynamic addedMedicineData){
  //   if(addedMedicineData != null){
  //     addedMedicineDataList = addedMedicineData;
  //     print(addedMedicineDataList);
  //   }
  // }

  // void getArgumentData(RxList<AddedMedicine>? addedMedicineData){
  //   addedMedicineDataList = addedMedicineData;
  //   print(addedMedicineDataList);
  // }

  void selectIndex(int index) {
    selectedIndex.value = index;
    //print(selectedIndex);
  }

  void navigateToNewScreen(String name) async {
    if (name == 'Reminder') {
      final result = await Get.toNamed(AddMedicineView.routeName);
      addedMedicineDataList!.addAll(result);
      // print(addedMedicineDataList);
      // Navigator.of(Get.context!).pushReplacementNamed(AddMedicineView.routeName);
    } else if (name == 'Medicine') {
      Get.toNamed(ScheduleView.routeName, arguments: addedMedicineDataList);
      //Navigator.of(Get.context!).pushNamed(ScheduleView.routeName, arguments: addedMedicineDataList);
    }
  }
}
