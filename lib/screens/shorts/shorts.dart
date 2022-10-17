import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ShortsScreen extends StatelessWidget {
  final spinkit = SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    },
  );
  ShortsScreen({super.key});
  List image = [
    'https://i.ytimg.com/vi/XVTrlZu28-U/hq720_2.jpg?sqp=-oaymwEkCJYDENAFSFryq4qpAxYIARUAAAAAJQAAyEI9AICiQ3gB0AEB&rs=AOn4CLDTsMGxm3Ezr2wiwOp0l4ijqGkR8g',
    'https://i.ytimg.com/vi/hgURjcXvzIg/hq720_2.jpg?sqp=-oaymwEkCJUDENAFSFryq4qpAxYIARUAAAAAJQAAyEI9AICiQ3gB0AEB&rs=AOn4CLD8i_GH1JOs9_7f2X0aBWUH5x8F4Q',
    'https://i.ytimg.com/vi/UPhxU9J46Qk/hq720_2.jpg?sqp=-oaymwEkCJUDENAFSFryq4qpAxYIARUAAAAAJQAAyEI9AICiQ3gB0AEB&rs=AOn4CLB5vSL3pN6DrjfLKl2LPb_xS4PfWA'
  ];
  List title = [
    'Three awsome facts about xiaomi...',
    'iphone 14 pro battery',
    'Where is chocolate really came from'
  ];
  List cimage = [
    'https://yt3.ggpht.com/a9pxvk2cuKHM3ZnsXKwcn1PEzxJBiLlZWE_O4uPAeUvnQF4Ojw8UtD3H_fYJk6ybkI7pwr8P=s176-c-k-c0x00ffffff-no-rj-mo',
    'https://yt3.ggpht.com/fSJW9y7epIA9BDfQhtdzmY7TFkZeO673oo-cLXvEc6GqEfb7mUMjYN3jFhyHKDc-JMgEPOzc=s48-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu8yzIyJRDd00EMyftrMfsvgICYcJ_sBx4F24u11=s88-c-k-c0x00ffffff-no-rj'
  ];
  List name = ['Mr.Perfect Tech', 'CallMeShazzam', 'MrBeast Shorts'];

  List bimage = [
    'https://yt3.ggpht.com/a9pxvk2cuKHM3ZnsXKwcn1PEzxJBiLlZWE_O4uPAeUvnQF4Ojw8UtD3H_fYJk6ybkI7pwr8P=s176-c-k-c0x00ffffff-no-rj-mo',
    'https://yt3.ggpht.com/fSJW9y7epIA9BDfQhtdzmY7TFkZeO673oo-cLXvEc6GqEfb7mUMjYN3jFhyHKDc-JMgEPOzc=s48-c-k-c0x00ffffff-no-rj',
    'https://yt3.ggpht.com/ytc/AMLnZu8yzIyJRDd00EMyftrMfsvgICYcJ_sBx4F24u11=s88-c-k-c0x00ffffff-no-rj'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
          physics: const PageScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: List.generate(3, (index) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image[index]), fit: BoxFit.cover),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 330,
                    top: 380,
                    child: Column(
                      children: const [
                        Icon(
                          Icons.thumb_up_off_alt_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          '180k',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          Icons.thumb_down_alt_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Dislike',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.white,
                        ),
                        Text(
                          '8k',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(cimage[index]),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              name[index],
                              style:
                                  const TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                  child: Text(
                                'Subscribe',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                            const SizedBox(
                              width: 72,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          bimage[index]),
                                      fit: BoxFit.cover)),
                              child: const SpinKitWave(
                                size: 12,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          })),
    );
  }
}
