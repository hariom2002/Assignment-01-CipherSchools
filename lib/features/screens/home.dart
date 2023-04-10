import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome to the",
            style: TextStyle(fontSize: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Future of Learning!",
                style: TextStyle(fontSize: 24, color: Colors.orange),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Start Learning by best creators for",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "absolutely Free",
            style: TextStyle(fontSize: 16, color: Colors.orange),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey[300],
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey[300],
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey[300],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    "50+",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Mentors",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Container(
                height: 30,
                width: 1,
                color: Colors.grey[300],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    "4.5/5",
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  Text(
                    "Ratings",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Start Learning Now ->",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.orange),
          ),
          SizedBox(height: 20),
          // Card(
          //   child: Image.network(
          //     "https://example.com/image.jpg",
          //     fit: BoxFit.cover,
          //   ),
          // ),
        ],
      ),
    );
  }
}
