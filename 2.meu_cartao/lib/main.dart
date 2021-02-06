import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.teal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CIRCULO
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('assets/images/alcemir.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Alcemir Santos",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'PottaOne-Regular',
                  ),
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),

              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),

              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 40),
                elevation: 10,
                shadowColor: Colors.black,
                child: ListTile(
                  title: Text(
                    '(86) 1234-5678',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                    ),
                  ),
                  leading: Icon(
                    Icons.phone_enabled,
                    color: Colors.teal,
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 40),
                elevation: 10,
                shadowColor: Colors.black,
                child: ListTile(
                  leading: Icon(
                    Icons.alternate_email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'alcemir.santos@grupocev.com',
                    style: TextStyle(color: Colors.teal, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
