import 'package:flutter/material.dart';
import 'service_detail.dart';

class HomePage extends StatelessWidget {
  final List services = [
    {'name': 'Plumber', 'icon': Icons.plumbing},
    {'name': 'Electrician', 'icon': Icons.electrical_services},
    {'name': 'House Cleaning', 'icon': Icons.cleaning_services},
    {'name': 'Delivery', 'icon': Icons.delivery_dining},
    {'name': 'Carpenter', 'icon': Icons.handyman},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daily Local Services')),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: services.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ServiceDetail(
                    serviceName: services[index]['name'],
                  ),
                ),
              );
            },
            child: Card(
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    services[index]['icon'],
                    size: 50,
                    color: Colors.green,
                  ),
                  SizedBox(height: 10),
                  Text(
                    services[index]['name'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
