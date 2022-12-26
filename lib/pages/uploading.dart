// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
// runApp(new MyApp());
// }

// class MyApp extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
// 	return new MaterialApp(
// 	home: new CameraAccess(),
// 	debugShowCheckedModeBanner: false,
// 	);
// }
// }

// class CameraAccess extends StatefulWidget {
// @override
// State<StatefulWidget> createState() {
// 	return new CameraAccessState();
// }
// }

// class CameraAccessState extends State<CameraAccess> {
// File cameraFile;

// @override
// Widget build(BuildContext context) {
// 	//display image selected from gallery
// 	selectFromCamera() async {
// 	cameraFile=await ImagePicker.pickImage(
// 		source: ImageSource.camera,
// 		// maxHeight: 50.0,
// 		// maxWidth: 50.0,
// 	);
// 	setState(() {});
// 	}

// 	return new Scaffold(
// 	appBar: new AppBar(
// 		title: new Text("Camera Access"),
// 		backgroundColor: Colors.green,
// 		actions: <Widget>[
// 		Text("GFG",textScaleFactor: 3,)
// 		],
// 	),
// 	body: new Builder(
// 		builder: (BuildContext context) {
// 		return Center(
// 			child: new Column(
// 			mainAxisAlignment: MainAxisAlignment.center,
// 			children: <Widget>[
// 				ElevatedButton(
// 				child: new Text('Select Image from Camera'),
// 				onPressed: selectFromCamera
// 				),
// 				SizedBox(
// 				height: 200.0,
// 				width: 300.0,
// 				child: cameraFile == null
// 					? Center(child: new Text('Sorry nothing selected!!'))
// 					: Center(child: new Image.file(cameraFile)),
// 				)
// 			],
// 			),
// 		);
// 		},
// 	),
// 	);
// }
// }

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({Key key}) : super(key: key);

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  // File _image;
  // Future getImage() async {
  //   final image = await ImagePicker().pickImage;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an Image'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.network('https://picsum.photos/250?images=9'),
            SizedBox(
              height: 40,
            ),
            CustomButton(
              title: 'Pick From gallery',
              icon: Icons.image_outlined,
              onClick: () => {},
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(
              title: 'Pick From camera',
              icon: Icons.camera,
              onClick: () => {},
            ),
          ],
        ),
      ),
    );
  }
}

Widget CustomButton({
  String title,
  IconData icon,
  VoidCallback onClick,
}) {
  return Container(
    width: 280,
    child: ElevatedButton(
      onPressed: onClick,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 20),
          Text(title),
        ],
      ),
    ),
  );
}
