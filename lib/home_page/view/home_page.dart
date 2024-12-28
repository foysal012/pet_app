import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../controller/home_page_controller.dart';
import '../model/pet_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> petsType = [
    "Dogs",
    "Cats",
    "Snake",
    "Birds",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.pink
          ),
        ),
        title: const Text("Hi, Foysal"),
      ),

      body: GetBuilder<HomePageController>(
        init: HomePageController(),
        builder: (controller) => Container(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Adopt",
                  style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const Text("your pet is here",
                  style: TextStyle(fontSize: 18, color: Colors.black38, fontWeight: FontWeight.bold),
                ),

                const Gap(10.0),

                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: petsType.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => controller.setPetValue(index),
                          child: Container(
                            height: 80,
                            width: 80,
                            margin: const EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: controller.petValue == index? Colors.orange.withOpacity(0.4) : Colors.orange.withOpacity(0.1)
                            ),
                            child: Center(child: Text(petsType[index])),
                          ),
                        );
                      }
                  ),
                ),

                const Gap(20.0),

                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: controller.petValue == 0 ? PetModel.dogDataList.length : controller.petValue == 1 ? PetModel.catDataList.length : controller.petValue == 2 ? PetModel.snakeDataList.length: PetModel.birdDataList.length,
                    itemBuilder: (context, index) {
                      // final dataInfo = PetModel.dogDataList[index];
                      final dataInfo = controller.petValue == 0 ? PetModel.dogDataList[index] : controller.petValue == 1 ? PetModel.catDataList[index] : controller.petValue == 2 ? PetModel.snakeDataList[index]: PetModel.birdDataList[index];
                      return Container(
                        height: 200,
                        margin: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.grey,
                                ),
                                child: Image.asset('${dataInfo.petImage}'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 110,
                                padding: const EdgeInsets.only(left: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                  color: Colors.grey[300],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('${dataInfo.petName}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                    const Gap(5.0),
                                    Text('${dataInfo.petColor}', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black54)),
                                    Text('Dog, ${dataInfo.petAge} year old', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black45)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),

              ],
            ),
          ),
        ),
      )
    );
  }
}
