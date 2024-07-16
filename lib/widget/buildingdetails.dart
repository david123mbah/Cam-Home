import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movein/pages/home_page.dart';
import 'package:movein/utils/places.dart';

class BuildDetails extends StatefulWidget {
  final Places building;

  const BuildDetails({super.key, required this.building});

  @override
  State<BuildDetails> createState() => _BuildDetailsState();
}

class _BuildDetailsState extends State<BuildDetails> {
  late final Places building;

  @override
  void initState() {
    super.initState();
    building = widget.building;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.90),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black.withOpacity(0.2)),
              image: DecorationImage(
                image: AssetImage(building.assets),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 12,
              left: 24,
              right: 24,
              bottom: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Homepage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          CupertinoIcons.back,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          CupertinoIcons.heart_circle,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
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
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.home_work_outlined,
                            size: 20,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "${building.area} m",
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "About :",
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        building.about,
                        style: const TextStyle(color: Colors.black),
                      ),
                      const Divider(
                        height: 32,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$${building.price}/mo",
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('android/assets/images/gsgg.png')
                            ),
                          ),
                        ),
                        const SizedBox(height: 56,),
                        const Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 12,),
                              Text('Anna Denis', style: TextStyle(color: Colors.black),),
                              SizedBox(height: 5,),
                              Text('Agent', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.phone,
                          color: Colors.red.withOpacity(0.56),
                          size: 32,
                        )
                      ],
                  ),
            ),
            const SizedBox(height: 30,),
            InkWell(
              onTap: () {
                
              },
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.red.withOpacity(0.56),
                ),
                alignment: Alignment.center,
                child: const Text('Book Visit'),
              ),
            ),
            
            ],
            ),
          ),
        ],
      ),
    );
  }
}
