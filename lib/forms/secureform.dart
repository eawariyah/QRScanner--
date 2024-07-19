import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class SecureSubForm extends StatefulWidget {
  const SecureSubForm({super.key});

  @override
  State<SecureSubForm> createState() => _SecureSubFormState();
}

class _SecureSubFormState extends State<SecureSubForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // backgroundColor: Colors.black,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            title: Row(
              children: [
                // Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: ElevatedButton(
                //       onPressed: () {
                //         Scaffold.of(context).openDrawer();
                //       },
                //       child: Icon(
                //         Icons.menu,
                //         color: Colors.white,
                //       )),
                // ),
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
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Container(
                      child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.zero), // Set padding to zero
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xFF1E1E1E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'What is your name?',
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
                                          hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            20), // Add spacing between TextField and button
                                    ElevatedButton(
                                      child: Text('Close Dialog',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)),
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty
                                            .all<EdgeInsets>(EdgeInsets
                                                .zero), // Set padding to zero
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color(0xFF1E1E1E)),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1E1E1E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                Text('1.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24)),
                                SizedBox(
                                  width: 8,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                    'What is your name?',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),

                                  // child: const TextField(
                                  //   decoration: InputDecoration(
                                  //     border: OutlineInputBorder(),
                                  //     labelText: 'What is your name?',
                                  //   ),
                                  // ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: ElevatedButton(
                                    onPressed: null,
                                    child:
                                        Icon(Icons.delete, color: Colors.white),
                                    style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets
                                                  .zero), // Set padding to zero
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFF1E1E1E)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                color: Colors.black,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text('Modal BottomSheet'),
                                      ElevatedButton(
                                        child: const Text('Close'),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.zero), // Set padding to zero
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: Icon(
                        Icons.add_box_outlined,
                        color: Colors.black,
                        size: 64,
                      ),
                    ),
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
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.description,
                      color: Colors.blue), // Set icon color here
                  title: Text('My Forms'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.assignment,
                      color: Colors.green), // Set icon color here
                  title: Text('Active Forms'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
