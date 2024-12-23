import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:home_rent/core/config/themes/background_colors.dart';
import 'package:home_rent/core/config/themes/colors.dart';
import 'package:home_rent/core/utils/constent/constants.dart';
import 'package:home_rent/feature/launch/presentations/details/presentations/widgets/build_icons.dart';
import 'package:readmore/readmore.dart';
import 'package:home_rent/core/controller/getx/home_details_controller.dart';

class DetailsProductScreen extends StatefulWidget {
  const DetailsProductScreen({super.key});

  @override
  State<DetailsProductScreen> createState() => _DetailsProductScreenState();
}

class _DetailsProductScreenState extends State<DetailsProductScreen> {
  final controller = Get.put(HomeDetailsController());
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
          children: [
             SizedBox(height: MediaQuery.of(context).size.height * .03),
            // Header Image Section with Overlay
            Stack(
              children: [
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: NetworkImage(controller.housedetails.value.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      gradient: gradientBackgroundForImage()
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                      onPressed: () => Get.back(),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: IconButton(
                      icon: const Icon(Icons.bookmark_border, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.housedetails.value.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                       controller.housedetails.value.address,
                        style: TextStyle(
                          color: secondaryTextColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            buildIcon(Icons.bed, Colors.white, Colors.white),
                            const SizedBox(width: 8),
                            Text("${controller.housedetails.value.bedrooms} Bedroom", style: TextStyle(color: secondaryTextColor),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            buildIcon(Icons.bathtub, Colors.white, Colors.white),
                            const SizedBox(width: 8),
                            Text("${controller.housedetails.value.bathrooms} Bathroom", style: TextStyle(color: secondaryTextColor)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Description Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ReadMoreText(
                controller.housedetails.value.description,
                trimMode: TrimMode.Length,
                trimLength: 80,
                colorClickableText: Colors.blue,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style: const TextStyle(fontSize: 14),
                moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blue),
              ),
                ],
              ),
            ),

            // Owner Section
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 20),
              child: Row(
                children: [
                   CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(controller.housedetails.value.ownerImage),
                  ),
                  const SizedBox(width: 15),
                   Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         controller.housedetails.value.ownerName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Owner', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  buildIcon(Icons.phone, Colors.white, Colors.blue),
                  const SizedBox(width: 14,),
                  buildIcon(FontAwesomeIcons.comment, Colors.white, Colors.blue),
                ],
              ),
            ),

            // Gallery Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Gallery',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        images.length, (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        width: 85,
                        height: 85,
                        child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(images[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              if (images.length > 4 && index == 3)
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                    gradient: gradientBackgroundForImage()
                                ),
                              ),
                              if (images.length > 4 && index == 3)
                              Align(
                                child: Text("+${images.length - 4}", style: const TextStyle(fontSize: 30, color: Colors.white),),
                              )
                            ]
                        ),
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15,),

            // maps
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: GoogleMap(
                      initialCameraPosition: const CameraPosition(
                          target: place,
                          zoom: 13
                      ),
                      markers: Iterable.generate(1, (index) => const Marker(
                          markerId: MarkerId("marker_id"),
                          icon: BitmapDescriptor.defaultMarker,
                          position: place,
                          infoWindow: InfoWindow(title: "This is marker")
                      )).toSet(),
                    ),
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      gradient: gradientBackgroundForMap()
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: textColor
                              ),
                            ),
                            Text(
                                 "${controller.housedetails.value.rentAmount}",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              gradient: gradientBackground(),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('Rent Now', style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  )
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }

}