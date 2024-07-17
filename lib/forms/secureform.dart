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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter item',
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Spacer(),
                      GestureDetector(
                        // onTap: () {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => const InvitationForm(),
                        //   ));
                        // },
                        onTap: null,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('assets/TextInput.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        // onTap: () {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => const InvitationForm(),
                        //   ));
                        // },
                        onTap: null,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('assets/MultiCheckbox.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        // onTap: () {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => const InvitationForm(),
                        //   ));
                        // },
                        onTap: null,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('assets/radio.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        // onTap: () {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => const InvitationForm(),
                        //   ));
                        // },
                        onTap: null,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('assets/grid.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
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
            )));
  }
}
