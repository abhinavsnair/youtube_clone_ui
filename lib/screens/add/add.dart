
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_clone_ui/screens/add/cardview.dart';

class AddScreen extends StatelessWidget {
  AddScreen({super.key});

  List image1 = [
    'https://i.ytimg.com/vi/LKsgDcckur0/maxresdefault.jpg',
    'https://i.pinimg.com/564x/9d/eb/0a/9deb0a7359c6991e29fbc0de29607839.jpg',
    'https://i.ytimg.com/vi/Llm2cbyaM98/hq720.jpg?sqp=-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLA3YEReZDySRk9I8fAvNRuUoVgKJQ'
  ];
  List image2 = [
    'https://i.ytimg.com/vi/U4orj8vViiU/maxresdefault.jpg',
    'https://i.ytimg.com/vi/U4orj8vViiU/maxresdefault.jpg',
    'https://yt3.ggpht.com/ytc/AMLnZu9sLxLWA7QQMlXcZbOBPA24VzXqEHTOOPBtdnznBA=s68-c-k-c0x00ffffff-no-rj'
  ];
  List title = [
    'The Weeknd - Blinding Lights (Official Instrumental',
    'The Weeknd & Ariana Grande - Save Your Tears',
    'Pixel 7 Review: Return of the King?'
  ];
  List subtitle = [
    '739K Views. 3yr ago',
    '870,575 viewsApr 23, 2021',
    '109,915 viewsOct 12, 2022'
  ];
  List simage = [
    'https://i.pinimg.com/236x/ec/8d/ae/ec8daecc8960883df7b411b1d4f10569.jpg',
    'https://i.pinimg.com/236x/98/d5/a4/98d5a44eedaabfdfb34c7a11ec8279c8.jpg',
    'https://i.pinimg.com/564x/3e/fc/7e/3efc7e2f8918e0415abb4def87a50cb2.jpg'
  ];
  List stitle = ['Fight club Movie Scenes', 'NBA Fights', 'Football clips'];
  List ssubtitle = ['13 lakh views', '2.6 crore views', '1 crore views'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: ListView(
              children: List.generate(3, (index) {
                return 
                   Padding(
                    padding:  EdgeInsets.only(top: 0, bottom: 20),
                    child: SizedBox(
                      height: 290,
                      child: Column(
                        children: [
                          Container(
                              height: 220,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(image1[index]),
                                    fit: BoxFit.cover),
                                color: Colors.black,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(image2[index]),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title[index],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(subtitle[index],
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  
                );
              }),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 120,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/564x/a4/e6/53/a4e6533dd283f9a3db24b8803e494d32.jpg'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 3,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(3, (index) {
                    return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(simage[index]),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  stitle[index],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ssubtitle[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ));
                  }),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
