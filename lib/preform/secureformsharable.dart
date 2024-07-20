import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

class SecureFormSharable extends StatefulWidget {
  const SecureFormSharable({super.key});

  @override
  State<SecureFormSharable> createState() => _SecureFormSharableState();
}

class _SecureFormSharableState extends State<SecureFormSharable> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: null,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                ),
                Spacer(),
                const ElevatedButton(
                    onPressed: null,
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    )),
              ],
            ),
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/QRCODE.png",
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () => _saveImage(context),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey)),
                          child: Text('Save sharable QR code',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins",
                                  color: Colors.white)),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Clipboard.setData(new ClipboardData(text: controller.text))
                        .then((_) {
                      controller.clear();
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Copied to your clipboard!')));
                    });
                  },
                  child: Text('www.qrcodeplus.com/iuadsnif45' + controller.text,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          color: Colors.black)),
                ),
                const Spacer(),
                BottomNavigationBar(
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.add),
                      label: 'Create form',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.qr_code),
                      label: 'Scan form',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Me',
                    ),
                  ],
                  onTap: (index) {
                    if (index == 0) {
                      Navigator.pushNamed(context, "/second");
                    }
                    if (index == 1) {
                      Navigator.pushNamed(context, "/third");
                    }
                    if (index == 2) {
                      Navigator.pushNamed(context, "/fourth");
                    }
                  },
                  backgroundColor: Colors.black,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white54,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _saveImage(BuildContext context) async {
    final status = await Permission.storage.request();
    if (status.isGranted) {
      // Load image bytes
      final ByteData bytes = await rootBundle.load('assets/QRCODE.png');
      final Uint8List list = bytes.buffer.asUint8List();

      // Get the directory
      final directory = (await getExternalStorageDirectory())?.path;
      final imagePath = '$directory/QRCODE.png';

      // Save the image
      final file = File(imagePath);
      await file.writeAsBytes(list);

      // Save to gallery
      final result = await ImageGallerySaver.saveFile(file.path);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(result['isSuccess']
              ? 'Image saved to gallery!'
              : 'Failed to save image.')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Permission to access storage denied.')));
    }
  }
}
