import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movein/utils/places.dart';
import 'package:movein/widget/buildingdetails.dart';

// ignore: camel_case_types
class BuildingItem extends StatelessWidget {
  const BuildingItem(
      {super.key,
      required this.building,
      this.showDetail = true,
      this.width,
      this.height,
      this.margin});

  final Places building;
  final bool showDetail;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return BuildDetails(building: building);
            }, // Replace `someBuilding` with your actual Places instance
          ),
        );
      },
      child: Container(
        margin: margin,
        height: height,
        width: width,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: Colors.grey.withOpacity(0.4)),
          boxShadow:  const [
            BoxShadow(
              color: Color.fromRGBO(143, 148, 251, .2),
              offset: Offset(0, 10),
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height != null ? height! * 0.5 : 200,
              width: width,
              child: Stack(
                children: [
                  Container(
                    height: height != null ? height! * 0.5 : 200,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(building.assets),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                      top: 16,
                      right: 16,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          CupertinoIcons.bookmark,
                          size: 20,
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(10),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(CupertinoIcons.heart),
                                ]),
                            if (!showDetail) ...[
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                building.name,
                                style: const TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "\$${building.price} /mo",
                                style: const TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ]
                          ],
                        ),
                      )),
                ],
              ),
            ),
            if (showDetail) ...[
              Text(
                building.tag,
                style: const TextStyle(color: Colors.black),
              ),
              Text(
                building.name,
                style: const TextStyle(color: Colors.black),
                maxLines: 1,
              ),
              Row(mainAxisSize: MainAxisSize.min, children: [
                const Icon(
                  CupertinoIcons.placemark_fill,
                  size: 20,
                ),
                Text(
                  building.location,
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.bathtub_outlined,
                  size: 20,
                ),
                Text(
                  building.bathroom.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.bedroom_parent_outlined,
                  size: 20,
                ),
                Text(
                  building.bedroom.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
              ]),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\$${building.price}",
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
