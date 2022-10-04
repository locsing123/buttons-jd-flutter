import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curriculum Vitae'),
        backgroundColor: Colors.black,
      ), // AppBar
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('image/avatar.png'),
            ),
            Text(
              'LOCSING  JOHN DAVE',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 29.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '(Information Technology)',
              style: TextStyle(
                fontFamily: 'Bahnschrift',
                color: Colors.black,
                fontSize: 20.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Color.fromARGB(255, 66, 223, 210),
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    'jdlocsing01@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Text(
                  '09270127998',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
                title: Text(
                  'Pasima,Malasiqui,Pangasinan',
                  style: TextStyle(
                      fontSize: 15.0, color: Colors.black, fontFamily: 'Ravie'),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background
                onPrimary: Colors.blueAccent, // foreground
              ),
              child: const Text('Educational Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ), // ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // background
                onPrimary: Colors.yellowAccent, // foreground
              ),
              child: const Text('Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ],
        ),
      ),
    ); // Scaffold
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.black,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade50,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'rubie',
                    fontSize: 18.0,
                  ),
                ),
                subtitle: Text('Philippine College of Science and Technology'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 16.0,
                  ),
                ),
                subtitle: Text(
                    'Bachelor of Science in Information Technology (2018-2023)'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black87,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontFamily: 'Arial Black'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Malasiqui Agno Valley College',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Arial Black',
                    fontSize: 16.0,
                  ),
                ),
                subtitle: Text('Senior High School (2016-2018)'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Malasiqui National High School',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Arial Black',
                    fontSize: 16.0,
                  ),
                ),
                subtitle: Text('Junior High School, (2012-2016)'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black87,
                      fontFamily: 'Arial Black'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Pasima/Taloy Elementary School',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Arial Black',
                    fontSize: 16.0,
                  ),
                ),
                subtitle: Text('(2006-2011)'),
              ),
            ),
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Professional Background"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.blueGrey,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "Professional Summary",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    "I'm a programmer and fresh graduate in college"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.album,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Skills and Abilities',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Creativity,Adaptability,Trustworthy,""Multi-Tasking, Loyalty "),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.web_rounded,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Web-Development',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    "I have developed websites before using PHP and I have little bit knowledge in Html"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.blueGrey ,
                ),
                title: Text(
                  'Certificates',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("NCII Holder in Computer System Servicing "),
              ),
            ),
          ],
        ),
      ),

      /// AppBar
    ); // Scaffold
  }
}
