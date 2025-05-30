import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

  Color? selectedColor;

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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: selectedColor ?? Colors.teal[200],
                                        // borderRadius: BorderRadius.circular(10.0),
                                          borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(50.0),
                                              bottomLeft: Radius.circular(50.0)
                                          )
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('${detailsData.petAge}',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          Text('Age',
                                            style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade200
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: selectedColor ?? Colors.teal[200],
                                        // borderRadius: BorderRadius.circular(10.0),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(50.0),
                                          bottomRight: Radius.circular(50.0)
                                        )
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('${detailsData.petCategory}',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          Text('Category',
                                            style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade200
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: selectedColor ?? Colors.teal[200],
                                        // borderRadius: BorderRadius.circular(10.0),
                                          borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(50.0),
                                              bottomLeft: Radius.circular(50.0)
                                          )
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('${detailsData.petOrigin}',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          Text('Origin',
                                            style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade200
                                          ),
                                          ),
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
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle
                            ),
                            child: IconButton(
                                onPressed: (){
                                  Get.back();
                                },
                                icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,)
                            ),
                          )),

                      Positioned(
                          top: 15,
                          right: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle
                          ),
                          child: PopupMenuButton<Color>(
                              icon: const Icon(Icons.more_vert, color: Colors.white,),
                              initialValue: selectedColor,
                              onSelected: (Color color) {
                                setState(() {
                                  selectedColor = color;
                                });
                                debugPrint("${selectedColor?.value}");
                              },
                              itemBuilder:
                                  (BuildContext context) => <PopupMenuEntry<Color>>
                              [
                                const PopupMenuItem<Color>(value: Colors.teal, child: Text('Teal')),
                                const PopupMenuItem<Color>(value: Colors.purple, child: Text('Purple')),
                                const PopupMenuItem<Color>(value: Colors.green, child: Text('Green')),
                                const PopupMenuItem<Color>(value: Colors.amber, child: Text('Amber')),
                                const PopupMenuItem<Color>(value: Colors.pink, child: Text('Pink')),
                              ]
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(10.0),

                  const Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: Colors.cyan
                  ),
                  const Gap(10.0),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${detailsData.petName}',
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                        const Gap(10.0),

                        const Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: Colors.cyan
                        ),
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
