import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/app_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  final List<String> _images = [
    "assets/images/Blockchain-Banking-Made-More-Simple-Yet-Secure.jpg",
    "assets/images/best-c-plus-plus.jpg",
    "assets/images/641ab3c901ad66001c68d594.jpg",
    "assets/images/Tensorflow-Courses-Certification-1000x563.jpg",
  ];

  final List<String> _images2 = [
    "assets/images/nfttt.jpg",
    "assets/images/41KxYvuThaL.jpg",
    "assets/images/9798597783734.jpg",
    "assets/images/free-web-development-courses-certifications.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: CommonAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: _images.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      _images[index],
                      width: size.width,
                      fit: BoxFit.cover,
                    );
                  },
                  onPageChanged: (value) {
                    setState(() {
                      _currentPage = value;
                    });
                  },
                ),
                Positioned(
                  top: size.height * 0.15,
                  left: 20,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _currentPage = (_currentPage - 1) % _images.length;
                      });
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.15,
                  right: 20,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _currentPage = (_currentPage + 1) % _images.length;
                      });
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended Courses",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        _images2[index % _images2.length],
                        width: size.width * 0.4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
