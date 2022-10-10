import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:social_media/constants/sizes.dart';
import 'package:social_media/constants/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: transparent,
        leadingWidth: 150,
        leading: Column(
          children: [
            greyText('Hello,', 15),
            const FittedBox(
              child: Text(
                'James',
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.w900, color: bColor),
              ),
            )
          ],
        ),
        actions: [
          CircleButton(
            icon: const Icon(CupertinoIcons.search),
            ontap: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h10,
            greyText('     Your Featured Stories', 12),
            SizedBox(
              height: 70,
              width: widthSize(context),
              child: ListView.separated(
                padding: const EdgeInsets.only(left: 16),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 5,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const CircleAvatar(
                  radius: 30,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: wColor,
                  ),
                ),
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: heightSize(context),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) => CustomCard(
                  borderRadius: 15,
                  childPadding: 8,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(),
                        title: const Text(
                          'Amar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: greyText('Post Time', 10),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.ellipsis_vertical)),
                      ),
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8UlF9BVse00yFRkBGNptJjLGJ23HmWuOcIQ&usqp=CAU'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(141, 48, 48, 47),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                      const Icon(CupertinoIcons.bookmark_fill),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.icon,
    this.ontap,
  }) : super(key: key);
  final Icon icon;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: bColor,
      shape: const CircleBorder(),
      onPressed: ontap,
      child: icon,
    );
  }
}
