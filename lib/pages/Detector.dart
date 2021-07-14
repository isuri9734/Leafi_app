import 'dart:io';

import 'package:flutter/material.dart';
import 'package:leafi/buttons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class Detector extends StatefulWidget {
  static const String id = 'detector';
  @override
  _DetectorState createState() => _DetectorState();
}

class _DetectorState extends State<Detector> {
  final imgpicker = ImagePicker();
  File _image;
  bool _loading = false;
  List _output;

  pickImage() async {
    var image = await imgpicker.getImage(source: ImageSource.camera);

    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });
    identifyImage(_image);
  }

  pickGalleryImage() async {
    var image = await imgpicker.getImage(source: ImageSource.gallery);

    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });
    identifyImage(_image);
  }

  @override
  void initState() {
    super.initState();
    _loading = true;
    loadModel().then((value) {
      
    });
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  identifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 130,
      
    );

    setState(() {
      _loading = false;
      _output = output;
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/leaf/leafi_model2.tflite',
      labels: 'assets/leaf/labels.txt',
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.green,
          title: Text('Leaf Diseases Classification', style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
          ),),
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          automaticallyImplyLeading: true,
          centerTitle: false,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Container(
                        width: 200,
                        child: Center(
                          child: _loading
                              ? Container(
                            width: 150,
                            child: Column(
                              children: <Widget>[
                                Container(
                                    height: 180,
                                    child: Image.asset(
                                      'assets/leaf.png',
                                      scale: 0.6,
                                    )),
                                SizedBox(
                                  height: 60,
                                ),
                              ],
                            ),
                          )
                              : Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.file(
                                      _image,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                _output != null
                                    ? Text(
                                  'Prediction is: ${_output[0]['label']}',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20.0),
                                )
                                    : Container(),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            AppButton(
                              onClick: pickImage,
                              btnText: 'Camera',
                            ),
                            SizedBox(height: 15),
                            AppButton(
                              onClick: pickGalleryImage,
                              btnText: 'Gallery',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
