import 'package:flutter/material.dart';
import 'package:smart_home/common_widget/detail_button.dart';

import '../../common/color_extension.dart';
import '../../common_widget/device_row.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  List listArr = [
    {
      "icon": Icons.phone_iphone,
      "name": "My Phone",
      "sub_name": "5GHz, 2h ago",
      "speed": "6Mbps"
    },
    {
      "icon": Icons.phone_iphone,
      "name": "Emi's iPhone",
      "sub_name": "5GHz, 2h ago",
      "speed": "4Mbps"
    },
    {
      "icon": Icons.laptop_mac,
      "name": "MacBook",
      "sub_name": "2.4GHz, 7h ago",
      "speed": "7Mbps"
    },
    {
      "icon": Icons.desktop_mac,
      "name": "iMac",
      "sub_name": "2.4GHz, 03/17 16:20",
      "speed": "9Mbps"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: TColor.unselect,
              size: 25,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: TColor.unselect,
                size: 25,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Netgear WiFi Router",
                  style: TextStyle(
                      color: TColor.text,
                      fontSize: 23,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Your network is online and everything\nlooks good",
                  style: TextStyle(
                    color: TColor.unselect,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  height: 175,
                  child: Row(
                    children: [
                      Expanded(
                        child: DetailCellButton(
                          bgColor: TColor.color5,
                          name: "Download\nSpeed",
                          val: "69 Mbps",
                          icon: Icons.arrow_downward,
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: DetailCellButton(
                        bgColor: TColor.color6,
                        name: "Upload\nSpeed",
                        val: "12 Mbps",
                        icon: Icons.arrow_upward,
                        onPressed: () {},
                      ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "4 devices connected",
                  style: TextStyle(
                      color: TColor.text,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),

               const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: listArr.map((lObj) {
                    return DeviceRow(lObj: lObj);
                  }).toList(),
                ),
              ),
            ],
          ),
        ));
  }
}
