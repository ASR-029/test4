import 'package:flutter/material.dart';


void main() {
  runApp(const HealthySnacksApp());
}


class HealthySnacksApp extends StatelessWidget {
  const HealthySnacksApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthy Snacks for Kids',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Arial',
      ),
      home: const LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.all(20),
              color: const Color(0xFFf0f8f0),
              child: const Column(
                children: [
                  Text(
                    'Healthy Snacks for Kids – The Smart Way!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2c8a51),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Worried about preservatives, carcinogens, and misleading "healthy" labels in your child\'s snacks?',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'We help parents find truly nutritious, ethical, and locally sourced snacks—backed by science, not marketing.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),


            // Features Section
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'Discover Safe & Delicious Snacks for Your Little Ones',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2c8a51),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  // Feature Grid
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FeatureItem(
                        icon: '✅',
                        title: 'Verified Nutrition',
                        description: 'No hidden additives or harmful chemicals',
                      ),
                      FeatureItem(
                        icon: '✅',
                        title: 'Local & Fresh',
                        description: 'Support farmers\' markets and sustainable food sources',
                      ),
                      FeatureItem(
                        icon: '✅',
                        title: 'Kid-Approved',
                        description: 'Fun, tasty, and easy options they’ll love',
                      ),
                    ],
                  ),
                ],
              ),
            ),


            // How It Works Section
            Container(
              padding: const EdgeInsets.all(20),
              color: const Color(0xFFf9f9f9),
              child: const Column(
                children: [
                  Text(
                    'How It Works:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2c8a51),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  // Steps
                  Column(
                    children: [
                      StepItem(
                        icon: '🔍',
                        title: 'Search Engine for Healthy Snacks',
                        description: 'Check ingredients, nutritional value, and safety ratings',
                      ),
                      StepItem(
                        icon: '📍',
                        title: 'Find Local Options',
                        description: 'Connect with nearby farmers and ethical brands',
                      ),
                      StepItem(
                        icon: '📱',
                        title: 'Social Media Tips',
                        description: 'Follow us for myth-busting infographics, snack ideas, and more',
                      ),
                      StepItem(
                        icon: '🏫',
                        title: 'School Partnerships',
                        description: 'Kids learn about healthy eating firsthand (and bring the knowledge home!)',
                      ),
                    ],
                  ),
                ],
              ),
            ),


            // CTA Section
            Container(
              padding: const EdgeInsets.all(20),
              color: const Color(0xFF2c8a51),
              child: Column(
                children: [
                  const Text(
                    'Join the Movement for Truly Healthy Kids’ Snacks!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '📩 Get Early Access to Our App – Be the first to try it!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Get Early Access'),
                          content: const Text('Enter your email to join the waitlist:'),
                          actions: [
                            const TextField(
                              decoration: InputDecoration(
                                hintText: 'your@email.com',
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Thanks! We’ll notify you soon.')),
                                );
                              },
                              child: const Text('Submit'),
                            ),
                          ],
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF2c8a51),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: const Text(
                      'SIGN UP NOW',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),


            // Social Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    'Follow Us for Daily Tips:',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        child: const Card(
                          child:
                            Image(image: AssetImage("images/facebook.png"))
                        ),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: const Card(
                          child:
                            Image(image: AssetImage("images/instagram.png"))
                        ),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        child: const Card(
                          child:
                            Image(image: AssetImage("images/tiktok.png"))
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Text(
                    'Because "healthy" shouldn’t be a mystery—it should be a guarantee. 🍎✨',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),


            // Footer
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.black,
              child: Column(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 20,
                    runSpacing: 10,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'About Us',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'FAQs',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Partner with Us',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '© 2024 Healthy Kids Snacks. All rights reserved.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Reusable Widgets
class FeatureItem extends StatelessWidget {
  final String icon;
  final String title;
  final String description;


  const FeatureItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(icon, style: const TextStyle(fontSize: 30)),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              ),
              const SizedBox(height: 10),
              Text(description, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}


class StepItem extends StatelessWidget {
  final String icon;
  final String title;
  final String description;


  const StepItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Text(icon, style: const TextStyle(fontSize: 30)),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  ),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
