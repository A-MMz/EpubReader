import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:epub_view/epub_view.dart';
class Demo3 extends StatefulWidget {
  const Demo3({Key? key}) : super(key: key);

  @override
  _Demo3State createState() => _Demo3State();
}

class _Demo3State extends State<Demo3> {
  late String path = '';
  var files = [];

  void selectDir() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory == null) {
      setState(() {
        path  = "";
      });

    }
    else{
      setState(() {
        path = selectedDirectory;
        listFiles(path);
      });

    }
    print(path);
  }


  void listFiles(String paths) async {
    var dir = Directory(paths);
    List<FileSystemEntity> entities = await dir.list().toList();
    setState(() {
      files = entities;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$path'),
        actions: [
          ElevatedButton(
              onPressed:(){
                selectDir();
                },
              child: Text('Pick directory'))
        ]
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3
          ),
          itemCount: files.length,
          itemBuilder:(BuildContext context, int index){
            var test = files[index];
            return Card(
              child: Text('$test'),
            );
          }
      )
    );
  }
}


