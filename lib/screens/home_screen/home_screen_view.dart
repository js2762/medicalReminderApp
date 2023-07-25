import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health/models/added_medicine.dart';
import '../../resources/app_images.dart';
import '../../resources/app_colors.dart';
import 'controller/home_controller.dart';

class HomeScreenView extends StatelessWidget {
   HomeScreenView({super.key});

  static const routeName = '/HomeScreenView';

  static Widget builder(BuildContext context) {
    //final addedMedicineData = Get.arguments;
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        // controller.onInit();
        return HomeScreenView();
      },
    );
  }

  // void initState() {
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Take Care\nof Your Health!',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(AppImages.userIcon),
                    )
                  ],
                ),
                const Text(
                  'Welcome back, Jaimin.',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.appOrange,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Today Activity:',
                            style: TextStyle(color: AppColors.white),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset(
                                  AppImages.capsuleMedicine,
                                  height: 20,
                                ),
                              ),
                              const Text(
                                'Take Aspirin medicine 18g\n3X per day, take on more hour\ntime: 10 Am',
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColors.white,
                          child: Text(
                            'OK',
                            style: TextStyle(
                                color: AppColors.appOrange, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Our Services',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.lightBlack),
                  ),
                ),
                Container(
                  height: 170,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  //color: Colors.red,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homeController.serviceList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          homeController.navigateToNewScreen(
                              homeController.serviceList[index]['name']);
                        },
                        child: Container(
                          width: 120,
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, top: 10, bottom: 20),
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: AppColors.lightGrey,
                                  blurRadius: 6,
                                  spreadRadius: 5,
                                  offset: Offset(0, 6),
                                ),
                              ],
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                homeController.serviceList[index]['imagePath'],
                                height: 60,
                              ),
                              Text(
                                homeController.serviceList[index]['name'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Text(
                  'Any complaint today?',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.lightBlack),
                ),
                Container(
                  height: 170,
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.lightGrey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: 'Explain the details..',
                          hintStyle: TextStyle(color: AppColors.grey),
                          suffix: Text(
                            '0/250',
                            style: TextStyle(fontSize: 14),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shadowColor: AppColors.grey,
                              elevation: 2,
                              backgroundColor: AppColors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              //elevation: 3
                            ),
                            child: const Text(
                              'Send Complaints',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.appOrange),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.grey,
                  spreadRadius: 0,
                  blurRadius: 7,
                )
              ]),
          height: 90,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            child: Obx(
              () {
                return BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  elevation: 0,
                  onTap: (indexValue) {
                    homeController.selectIndex(indexValue);
                  },
                  type: BottomNavigationBarType.fixed,
                  currentIndex: homeController.selectedIndex.value,
                  items: [
                    BottomNavigationBarItem(
                        icon: CircleAvatar(
                            radius: 25,
                            backgroundColor:
                                homeController.selectedIndex.value == 0
                                    ? AppColors.appOrange
                                    : Colors.transparent,
                            child: SvgPicture.asset(AppImages.profile,
                                height: 25,
                                colorFilter:
                                    homeController.selectedIndex.value == 0
                                        ? const ColorFilter.mode(
                                            AppColors.white, BlendMode.srcIn)
                                        : const ColorFilter.mode(
                                            AppColors.grey, BlendMode.srcIn))),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: CircleAvatar(
                            radius: 25,
                            backgroundColor:
                                homeController.selectedIndex.value == 1
                                    ? AppColors.appOrange
                                    : Colors.transparent,
                            child: SvgPicture.asset(
                              AppImages.home,
                              height: 25,
                              colorFilter:
                                  homeController.selectedIndex.value == 1
                                      ? const ColorFilter.mode(
                                          AppColors.white, BlendMode.srcIn)
                                      : const ColorFilter.mode(
                                          AppColors.grey, BlendMode.srcIn),
                            )),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: CircleAvatar(
                            radius: 25,
                            backgroundColor:
                                homeController.selectedIndex.value == 2
                                    ? AppColors.appOrange
                                    : Colors.transparent,
                            child: SvgPicture.asset(
                              AppImages.more,
                              height: 25,
                              colorFilter:
                                  homeController.selectedIndex.value == 2
                                      ? const ColorFilter.mode(
                                          AppColors.white, BlendMode.srcIn)
                                      : const ColorFilter.mode(
                                          AppColors.grey, BlendMode.srcIn),
                            )),
                        label: ''),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
