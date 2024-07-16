import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class CreateForm extends StatefulWidget {
  const CreateForm({super.key});

  @override
  State<CreateForm> createState() => _CreateFormState();
}

class _CreateFormState extends State<CreateForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                    width: MediaQuery.sizeOf(context).width,
                    child: Image.asset(
                      "assets/Untitled.png",
                      width: 200,
                      height: 200,
                    ),
                  ),
                  Container(
                      color: Colors.black,
                      width: MediaQuery.sizeOf(context).width,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Center(
                          child: Text('Create Form',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins",
                                  color: Colors.white)),
                        ),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero))),
                      onPressed: null,
                      child: const Text(
                        'Share contact',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: Colors.black),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero))),
                      onPressed: null,
                      child: const Text(
                        'Create QR Code',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: Colors.black),
                      )),
                  const ElevatedButton(
                      onPressed: null,
                      child: Text(
                        'Scan QR code',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            color: Colors.black),
                      )),
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
                  ),
                ],
              ),
            )));
  }
}
