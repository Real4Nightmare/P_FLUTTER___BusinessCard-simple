import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CircleAvatar(
                foregroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg5ew9i_-EsP_nUOI3wFXcSVAZVxH5zaoKKg&usqp=CAU'),
                radius: 100,
              ),
            ),
            const Text(
              'NIMA',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            CustomCard(
              title: 'phone',
              icon: const Icon(Icons.phone),
              onTap: () => _launchUrl(
                Uri.parse('tel:+989111111111'),
              ),
            ),
            CustomCard(
              title: 'whatsapp',
              icon: const Icon(Icons.whatsapp),
              onTap: () => _launchUrl(
                Uri.parse('https://api.whatsapp.com/send?phone=+989111111111'),
              ),
            ),
            CustomCard(
              title: 'telegram',
              icon: const Icon(Icons.telegram),
              onTap: () => _launchUrl(
                Uri.parse('https://instagram.com/noz_tune'),
              ),
            ),
            CustomCard(
              title: 'google',
              icon: const Icon(Icons.search),
              onTap: () => _launchUrl(
                Uri.parse('https://www.google.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onTap;

  const CustomCard(
      {required this.title, required this.icon, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: ListTile(
            leading: icon,
            title: Text(title),
          ),
        ),
      ),
    );
  }
}
