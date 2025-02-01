import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../home_page/model/pet_model.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  final PetModel detailsData = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.7,
                        width: MediaQuery.sizeOf(context).width,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                          ),
                          image: DecorationImage(image: AssetImage('${detailsData.petImage}'),fit: BoxFit.fill),
                        ),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('${detailsData.petAge}'),
                                          const Text('Age'),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('${detailsData.petCategory}'),
                                          const Text('Category'),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('${detailsData.petOrigin}'),
                                          const Text('Origin'),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 15,
                          left: 5,
                          child: IconButton(
                              onPressed: (){
                                Get.back();
                              },
                              icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,)
                          ))
                    ],
                  ),
                  const Gap(20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${detailsData.petName}',
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        const Gap(10.0),
                        Text('${detailsData.petDescription}',
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black54)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
    );
  }
}
