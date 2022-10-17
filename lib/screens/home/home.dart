import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_clone_ui/screens/home/screens/all.dart';
import 'package:youtube_clone_ui/screens/home/screens/concerts.dart';
import 'package:youtube_clone_ui/screens/home/screens/live.dart';
import 'package:youtube_clone_ui/screens/home/screens/mixes.dart';
import 'package:youtube_clone_ui/screens/home/screens/music.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 5,
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    centerTitle: false,
                    backgroundColor: Colors.black,
                    leading: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/2875/2875432.png'),
                    title: Text(
                      'YouTube',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    actions: const [
                      Icon(
                        Icons.cast,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                          height: 24,
                          width: 24,
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/564x/76/69/31/766931ba1bfcd927dd0ba2297bed46a2.jpg',
                                  scale: 20)))
                    ],
                    bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(30),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                height: 50,
                                width: 80,
                                color: Colors.black,
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.explore_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Explore',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 8,
                                color: Colors.grey,
                              ),
                              TabBar(
                                labelColor: Colors.white,
                                indicatorWeight: 0.5,
                                isScrollable: true,
                                indicatorPadding: const EdgeInsets.all(2),
                                indicator: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey),
                                tabs: const [
                                  Tab(
                                    child: Text('All'),
                                  ),
                                  Tab(
                                    child: Text('Concerts'),
                                  ),
                                  Tab(
                                    child: Text('Live'),
                                  ),
                                  Tab(
                                    child: Text('Mixes'),
                                  ),
                                  Tab(
                                    child: Text('Music'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  )
                ];
              },
              body: TabBarView(children: [
                AllTab(),
                const ConcertsTab(),
                const LiveTab(),
                const MixesTab(),
                const MusicTab()
              ]))),
    );
  }
}
