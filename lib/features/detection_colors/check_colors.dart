import 'dart:io';

import 'package:colorsblind/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'dart:async';

import '../../resource/images.dart';

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
        title: const Text(
          "KIỂM TRA MÀU SẮC",
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
        backgroundColor: AppColors.kSecondaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                    'Bạn hãy chọn tấm hình trong máy, mà bạn khó nhận biết màu sắc của chúng, hoặc bạn có thể sử dụng Camera để chụp lại màu sắc bạn khó nhận biết, ColorBlind sẽ giúp nhận biết màu sắc đó.'),
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: AppColors.kGrayColor),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.kGrayColor,
                        offset: Offset(1, 1),
                        spreadRadius: 1,
                        blurRadius: 0.5,
                      ),
                    ],
                  ),
                  child: (_imageFile != null)
                      ? Image.file(_imageFile!)
                      : Image.asset(
                          AppImages.defaul_Image,
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.9,
                        )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        selectImage();
                      },
                      child: const Icon(
                        Icons.folder,
                        size: 35,
                        color: AppColors.kSecondaryColor,
                      )),
                  TextButton(
                      onPressed: () {
                        cameraImage();
                      },
                      child: const Icon(
                        Icons.camera_alt,
                        size: 35,
                        color: AppColors.kSecondaryColor,
                      ))
                ],
              ),
              const SizedBox(height: 20),
              const Text('Màu sắc trong tấm hình:'),
              const SizedBox(height: 20),
              Column(
                children: _classifiedResult != null
                    ? _classifiedResult!.map((result) {
                        return Card(
                          elevation: 1.0,
                          color: AppColors.kSecondaryColor,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            margin: const EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "${result["label"]} :  ${(result["confidence"] * 100).toStringAsFixed(1)}%",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
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
    var image =
        // ignore: deprecated_member_use
        await picker.getImage(source: ImageSource.gallery, maxHeight: 300);
    classifyImage(image);
  }

  Future cameraImage() async {
    final picker = ImagePicker();
    // ignore: deprecated_member_use
    var image =
        // ignore: deprecated_member_use
        await picker.getImage(source: ImageSource.camera, maxHeight: 300);
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
