import 'package:flutter/material.dart';
import 'package:video_clips_app/pages/uploading.dart';

class productslist extends StatefulWidget {
  productslist({Key key}) : super(key: key);

  @override
  State<productslist> createState() => _productslistState();
}

class _productslistState extends State<productslist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Product Categories to be Analyzed',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              CustomButton(
                title: 'Headphones',
                icon: Icons.headphones,
                onClick: () => {},
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                title: 'Watches',
                icon: Icons.watch,
                onClick: () => {},
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                title: 'Cars',
                icon: Icons.car_crash_sharp,
                onClick: () => {},
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                title: 'Laptops',
                icon: Icons.laptop,
                onClick: () => {},
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                title: 'Smart phones',
                icon: Icons.smartphone,
                onClick: () => {},
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
