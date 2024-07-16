import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movein/widget/build_Items.dart';
import 'package:movein/widget/near_me%20_buildings.dart';
import 'package:movein/utils/places.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white.withOpacity(0.90),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            centerTitle: false,
            elevation: 0,
            titleSpacing: 0,
            toolbarHeight: 100,
            title: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('android/assets/images/gsgg.png'),
                  ),
                  const SizedBox(
                      width:
                          10), // Add some space between the icon and the text
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Hello, ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: "David!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
            ),
            actions: [
              Image.asset(
                'android/assets/images/Menu(2).png',
                width: 44,
                height: 44,
                color: Colors.black.withOpacity(0.5),
              ),
              const SizedBox(
                width: 34,
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: SizedBox(
                child: Container(
                  height: 56,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.blue.withOpacity(0.4),
                      ),
                      SizedBox(
                        child: Text(
                          '   Apartment, House or Hotel',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(
              29,
            ),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CLose To You',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Color.fromARGB(255, 133, 48, 154),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: BuildingsClose(),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(24),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular in Yaounde',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return BuildingItem(
                    building: popular[index],
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    showDetail: false,
                  );
                },
                childCount: popular.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
