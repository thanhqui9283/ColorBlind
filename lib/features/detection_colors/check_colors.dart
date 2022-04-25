import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'dart:async';

class CheckColors extends StatefulWidget {
  const CheckColors({Key? key}) : super(key: key);

  @override
  State<CheckColors> createState() => _CheckColorsState();
}

class _CheckColorsState extends State<CheckColors> {
  File? _imageFile;
  List? _classifiedResult;

  @override
  void initState() {
    super.initState();
    loadImageModel();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Classification"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(color: Colors.white),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 2),
                        spreadRadius: 2,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: (_imageFile != null)?
                  Image.file(_imageFile!) :
                  Image.network('https://i.imgur.com/sUFH1Aq.png')
              ),
              TextButton(
                  onPressed: (){
                    selectImage();
                  },
                  child: const Text('Select Image')
              ),
              TextButton(
                  onPressed: (){
                    cameraImage();
                  },
                  child: const Text('Open Cam')
              ),
              const SizedBox(height: 20),
              Column(
                  children: _classifiedResult != null
                      ? _classifiedResult!.map((result) {
                    return Card(
                      elevation: 0.0,
                      color: Colors.lightBlue,
                      child: Container(
                        width: 300,
                        margin: const EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            "${result["label"]} :  ${(result["confidence"] * 100).toStringAsFixed(2)}%",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  }).toList()
                      : [],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future loadImageModel() async {
    Tflite.close();
    String result;
    result = (await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    ))!;
    print(result);
  }

  Future selectImage() async {
    final picker = ImagePicker();
    // ignore: deprecated_member_use
    var image = await picker.getImage(source: ImageSource.gallery, maxHeight: 300);
    classifyImage(image);
  }
  Future cameraImage() async {
    final picker = ImagePicker();
    // ignore: deprecated_member_use
    var image = await picker.getImage(source: ImageSource.camera, maxHeight: 300);
    classifyImage(image);
  }

  Future classifyImage(image) async {
    _classifiedResult = null;
    // Run tensorflowlite image classification model on the image
    print("classification start $image");
    final List? result = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    print("classification done");
    setState(() {
      if (image != null) {
        _imageFile = File(image.path);
        _classifiedResult = result;
      } else {
        print('No image selected.');
      }
    });
  }

}