import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllServicesPage extends StatelessWidget {
  const AllServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 14.0,right: 14, top: 12,
                        bottom: 7),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/time.svg',
                      colorFilter:
                          ColorFilter.mode(Color(0xFFFF8B3E), BlendMode.srcIn),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Today, 24 May, 08:00 AM',
                      style: TextStyle(
                        color: Color(0xFFFF8B3E),
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '3:4 Hours',
                      style: TextStyle(
                        color: Color(0xFFFF8B3E),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xFFF6F6F6),
                ),
              ),
              Padding(
                padding:    const EdgeInsets.only(left: 14.0,right: 14, top: 7,
                    bottom: 12),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/title.svg',
                      colorFilter:
                          ColorFilter.mode(Color(0xFF617C94), BlendMode.srcIn),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        'Egypt, New Cairo, Maadi, Bank Misr Egypt ew Cairo, Maadi, Bank Misr Egypt, New Cairo,...',
                        style: TextStyle(
                          color: Color(0xFF617C94),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
