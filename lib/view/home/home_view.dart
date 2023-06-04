import 'package:flutter/material.dart';
import 'package:smart_home/common/color_extension.dart';
import 'package:smart_home/common_widget/devices_cell.dart';
import 'package:smart_home/common_widget/round_icon_button.dart';
import 'package:smart_home/view/detail/detail_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectPage = 0;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.sort,
            color: TColor.unselect,
            size: 25,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              child: Image.asset('assets/img/1.png'),
              radius: 25,
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
                "My Smart Home",
                style: TextStyle(
                    color: TColor.text,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: RoundIconButton(
                        name: "Light",
                        icon: Icons.lightbulb,
                        bgColor: TColor.color1,
                        onPressed: () {}),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: RoundIconButton(
                        name: "Media",
                        icon: Icons.smart_display,
                        bgColor: TColor.color2,
                        onPressed: () {}),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: RoundIconButton(
                        name: "Camera",
                        icon: Icons.videocam,
                        bgColor: TColor.color3,
                        onPressed: () {}),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: RoundIconButton(
                        name: "Wi-fi",
                        icon: Icons.wifi,
                        bgColor: TColor.color4,
                        onPressed: () {}),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Living Room",
                style: TextStyle(
                    color: TColor.text,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "2 devices",
                style: TextStyle(
                  color: TColor.unselect,
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: media.width * 0.5,
                child: Row(
                  children: [
                    Expanded(
                      child: DevicesCellButton(
                          name: "Netgear\nWiFi Router",
                          img: "assets/img/wifi_router.png",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailView(),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: DevicesCellButton(
                          name: "Living Room\nSpeaker",
                          img: "assets/img/room_speaker.png",
                          onPressed: () {}),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  selectPage = 0;
                });
              },
              icon: Icon(
                Icons.home_filled,
                size: 30,
                color: selectPage == 0 ? TColor.primary : TColor.unselect,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  selectPage = 1;
                });
              },
              icon: Icon(
                Icons.settings,
                size: 30,
                color: selectPage == 1 ? TColor.primary : TColor.unselect,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.mic,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
