import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_rent/core/config/themes/background_colors.dart';
import 'package:home_rent/core/config/themes/colors.dart';
import 'package:home_rent/core/controller/getx/home_details_controller.dart';
import 'package:home_rent/core/utils/constent/constants.dart';
import 'package:home_rent/feature/launch/data/model/house_model.dart';
import 'package:home_rent/feature/launch/presentations/details/presentations/page/details_product.dart';
import 'package:home_rent/feature/launch/presentations/home/presentation/widgets/widgets_build_category_chip.dart';
import 'package:home_rent/feature/launch/presentations/home/presentation/widgets/widgets_build_sectionheader.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(HomeDetailsController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Location",
                  style: TextStyle(color: textColor, fontSize: 15),
                ),
                const SizedBox(width: 10),
                const Row(
                  children: [
                    Text("Jakarta",
                        style: TextStyle(color: Colors.black, fontSize: 25)),
                    Icon(Icons.keyboard_arrow_down, color: Colors.black),
                  ],
                )
              ],
            ),
            Image.asset(
              "assets/images/notification.png",
              width: 25,
              height: 25,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: textColor,
                      ),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.normal, color: textColor),
                      hintText: "Search address, or near you",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: colorBg,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: gradientBackground(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/images/settings.png",
                    width: 28,
                    height: 28,
                  ),
                )
              ],
            ),

            const SizedBox(height: 16),

            // Categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCategoryChip("House", true),
                  buildCategoryChip("Apartment", false),
                  buildCategoryChip("Hotel", false),
                  buildCategoryChip("Villa", false),
                  buildCategoryChip("Category", false),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // "Near from you" section
            buildSectionHeader("Near from you"),

            const SizedBox(height: 8),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildPropertyCard(
                      "Dreamsville House",
                      "https://images.unsplash.com/photo-1580587771525-78b9dba3b914?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fHJlbnRhbCUyMGhvdXNlfGVufDB8fDB8fHww",
                      "Jl Sultan Iskandar Muda",
                      "1.8 km",
                      'The 1 level house that has a modern design, has a large pool and a garage that fits up to four cars, one gym one hall so many things,Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      5,
                      3,
                      'Garry Allen',
                      2000465000.0,
                      'https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  const SizedBox(width: 30),
                  _buildPropertyCard(
                      "Ascot House",
                      "https://cdn.pixabay.com/photo/2016/11/29/03/53/house-1867187_960_720.jpg",
                      "Jl Cilandak Tengah",
                      "2.5 km",
                      'The 2 level house that has a modern design, has a large pool and a garage that fits up to four cars, one gym one hall so many things,Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      6,
                      4,
                      'Garry Kallen',
                      2025046500.0,
                      'https://images.unsplash.com/photo-1521566652839-697aa473761a?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // "Best for you" section
            buildSectionHeader("Best for you"),

            const SizedBox(height: 8),

            Expanded(
              child: ListView(
                children: houses
                    .map((house) => _buildListProperty(
                        house.title,
                        house.address,
                        house.imageUrl,
                        house.rentAmount,
                        house.bathrooms,
                        house.bedrooms,
                        house.ownerName,
                        house.description,
                        house.ownerImage))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPropertyCard(
      String title,
      String image,
      String address,
      String distance,
      String disctription,
      int bedroom,
      int bathroom,
      String ownner,
      double price,
      String ownnerimage) {
    return InkWell(
      onTap: () {
        controller.setHoseDetils(HouseModel(
            title: title,
            address: address,
            bedrooms: bedroom,
            bathrooms: bathroom,
            description: disctription,
            imageUrl: image,
            rentAmount: price,
            ownerName: ownner,
            ownerImage: ownnerimage));
        Get.to(const DetailsProductScreen());
      },
      child: Container(
        width: 250,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              right: 15,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                    Text(
                      distance,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    address,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListProperty(
      String title,
      String address,
      String image,
      double price,
      int bedrooms,
      int bathrooms,
      String owner,
      String discription,
      String ownerimage) {
    return InkWell(
      onTap: () {
        controller.setHoseDetils(HouseModel(
            title: title,
            address: address,
            bedrooms: bedrooms,
            bathrooms: bathrooms,
            description: discription,
            imageUrl: image,
            rentAmount: price,
            ownerName: owner,
            ownerImage: ownerimage));
        Get.to(const DetailsProductScreen());
      },
      child: SizedBox(
        width: double.infinity,
        height: 80,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  "RP $price / Year",
                  style: const TextStyle(color: Colors.blue),
                ),
                Row(children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.bed,
                        color: Colors.black26,
                      ),
                      Text(
                        "$bedrooms Bedroom",
                        style: const TextStyle(color: Colors.black38),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.bathtub_rounded,
                        color: Colors.black26,
                      ),
                      Text(
                        "$bathrooms Bathroom",
                        style: const TextStyle(color: Colors.black38),
                      ),
                    ],
                  ),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
