import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceDetail extends StatelessWidget {
  final String serviceName;

  ServiceDetail({required this.serviceName});

  void callService() async {
    final Uri url = Uri.parse('tel:9876543210');
    await launchUrl(url);
  }

  void whatsappService() async {
    final Uri url = Uri.parse(
      'https://wa.me/919876543210?text=Need $serviceName service',
    );
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(serviceName)),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              serviceName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: callService,
              icon: Icon(Icons.call),
              label: Text('Call Now'),
            ),
            SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: whatsappService,
              icon: Icon(Icons.whatsapp),
              label: Text('WhatsApp'),
            ),
          ],
        ),
      ),
    );
  }
}
