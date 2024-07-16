import 'package:flutter/material.dart';

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
                  ),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: null,
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SurveyForm(),
                        ));
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 350,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('assets/Black.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: Text(
                                    'Survey',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const QuizForm(),
                        ));
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 350,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('assets/Black.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Text(
                                    'Quiz',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const InvitationForm(),
                        ));
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 350,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('assets/Black.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: Text(
                                    'Invitation',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CheckInForm(),
                        ));
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: Container(
                            width: 350,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('assets/Black.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  child: Text(
                                    'Check-in',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
      ),
    );
  }
}

class SurveyForm extends StatelessWidget {
  const SurveyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text('QR Scanner'),
        ),
        body: const Text('data'));
  }
}

class QuizForm extends StatelessWidget {
  const QuizForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text('QR Scanner'),
        ),
        body: const Text('data'));
  }
}

class InvitationForm extends StatelessWidget {
  const InvitationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text('QR Scanner'),
        ),
        body: const Text('data'));
  }
}

class CheckInForm extends StatelessWidget {
  const CheckInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text('QR Scanner'),
        ),
        body: const Text('data'));
  }
}
