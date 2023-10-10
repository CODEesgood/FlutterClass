import 'package:flutter/material.dart';
import 'package:flutter_aug_5/size_config.dart';
import 'package:flutter_aug_5/resource.dart';

class Watermain extends StatelessWidget {
  const Watermain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Water Awareness",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Set app bar text color to white
          ),
        ),
        backgroundColor: Color(
            0xFF007AFF), // Set the app bar's background color to a shade of blue
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/watermainimage.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                Text(
                  "The Importance of Water",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF007AFF), // Set title text color to blue
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Water is essential for all life on Earth. It is a precious resource that we must protect and conserve.",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87, // Set content text color to black
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                Divider(
                  color: Color(0xFF007AFF), // Set divider color to blue
                  thickness: 2.0,
                  endIndent: 20,
                  indent: 20,
                ),
                SizedBox(height: 20.0),
                Column(
                  children: [
                    InfoTile(
                      title: "Key Facts",
                      content:
                          "1. Water covers about 71% of the Earth's surface.\n"
                          "2. Only about 2.5% of the Earth's water is freshwater.\n"
                          "3. Access to clean drinking water is a global challenge for many people.\n"
                          "4. Conserving water helps protect the environment and save money.\n"
                          "5. Water is crucial for agriculture, industry, and ecosystems.\n"
                          "6. Climate change can impact water availability and quality.",
                    ),
                    InfoTile(
                      title: "Water Conservation",
                      content: "Conserving water is everyone's responsibility. "
                          "Small actions, such as fixing leaks, turning off taps, "
                          "and reducing water usage in daily activities, can make a big difference.",
                    ),
                    InfoTile(
                      title: "Get Involved",
                      content:
                          "You can get involved in water conservation efforts in your community. "
                          "Support organizations that work to provide clean water access and educate others "
                          "about the importance of water conservation.",
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Resource()));
                    // Add action to the button (e.g., navigate to more information)
                  },
                  child: Text(
                    "Learn More",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white, // Set button text color to white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(
                        0xFF007AFF), // Set button background color to blue
                  ),
                ),
                SizedBox(height: 16.0), // Add some space below the button
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final String title;
  final String content;

  InfoTile({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF007AFF), // Set title text color to blue
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          content,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black87, // Set content text color to black
          ),
        ),
      ],
    );
  }
}
