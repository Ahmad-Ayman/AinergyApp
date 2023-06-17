import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'all_services_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Color(0xFF27425B),
          child: const Icon(Icons.add,color:  Color(0xFFFF8B3E),),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 1,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style: TextStyle(fontSize: 12, color: Color(0xFF5B748B)),
                ),
                Text(
                  '24 May, 2023',
                  style: TextStyle(fontSize: 16, color: Color(0xFF5B748B)),
                )
              ],
            ),
          ),
          actions: [
            SvgPicture.asset('assets/images/Notifications.svg'),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/profile.png',
              width: 30,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: TabBar(
            indicatorColor: Color(0xFFFF8B3E),
            labelColor: Color(0xFF5B748B),
            tabs: [
              Tab(
                text: 'All Services',
              ),
              Tab(
                text: 'My Services',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AllServicesPage(),
            AllServicesPage(),
          ],
        ),
      ),
    );
  }
}

