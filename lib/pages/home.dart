import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyjam_app/models/destination.dart';
import 'package:studyjam_app/pages/detail.dart';

import '../models/category.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CategoryModel> categoriesData = CategoryModel.getCategories();
  final List<DestinationModel> destinationData =
      DestinationModel.getDestinations();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [category(), destination()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 28, 159, 226),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        onTap: (int index) {
          // Handle navigation
        },
      ),

    );
  }

  AppBar header() {
    return AppBar(
        backgroundColor: Colors.white,
        title: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Current Location',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_pin,
                    size: 12,
                    color: Color.fromARGB(255, 28, 159, 226),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Denpasar, Bali',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              )
            ]),
        leading: const SizedBox(child: Icon(Icons.menu)),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications),
          SizedBox(
            width: 16,
          )
        ]);
  }

  Column category() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Color.fromARGB(255, 28, 159, 226),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 12,
                    color: Color.fromARGB(255, 28, 159, 226),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.all(16),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => setState(() {
                    for (var item in categoriesData) {
                      item.isSelected = false;
                    }
                    categoriesData[index].isSelected = true;
                  }),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: categoriesData[index].isSelected
                                ? Color(0xff51A8FF).withOpacity(0.45)
                                : Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: Offset(0, 4))
                      ],
                      color: categoriesData[index].isSelected
                          ? Color(0xff51A8FF)
                          : Colors.white,
                    ),
                    child: Icon(
                      categoriesData[index].icon,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 50),
              itemCount: categoriesData.length),
        )
      ],
    );
  }

  Expanded destination() {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20, right: 16,bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Destination',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 28, 159, 226),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 12,
                      color: Color.fromARGB(255, 28, 159, 226),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              destinationModel: destinationData[index],
                            ),
                          ));
                    },
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff51A8FF).withOpacity(0.07),
                              blurRadius: 20,
                              offset: Offset(0, 4))
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Container(
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  image: Image.asset(
                                          destinationData[index].imgPath)
                                      .image,
                                  // scale: 2.8,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    destinationData[index].title,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        size: 12,
                                        color:
                                            Color.fromARGB(255, 28, 159, 226),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        destinationData[index].location,
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 28, 159, 226),
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Text("\$${destinationData[index].price}",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text(" /Person",
                                          style: const TextStyle(
                                              color: Colors.grey))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: destinationData.length),
          ),
        ],
      ),
    );
  }
}
