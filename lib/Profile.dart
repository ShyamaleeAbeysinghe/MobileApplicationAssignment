import 'package:flutter/material.dart';
import 'package:title_widget/title_widget.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "Professional Profile";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            appTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32,color: Colors.blue),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      // child: Text('Hello World'),
                      ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircularProfileAvatar(
                            'asset/profile.jpg',
                            errorWidget: (context, url, error) => Container(
                              child: Icon(Icons.error),
                            ),
                            placeHolder: (context, url) => Container(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(),
                            ),
                            borderColor: Colors.blue,
                            borderWidth: 2,
                            elevation: 5,
                            radius: 50,
                            cacheImage: true,
                          ),
                          Container(
                              child: const Text(
                            'Shyamalee Abeysinghe',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                          Container(
                              child: Text('Software Engineer',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14))),
                          Container(
                            child: Text(
                                'Nawa janapadaya, Hayahaula, thiniyawala',
                                style: TextStyle(fontSize: 14)),
                            margin: EdgeInsets.only(bottom: 8.0),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              color: Colors.black,
                              width: double.infinity,
                              child: RectGlassTitle(
                                text: "About Me",
                                textColor: Colors.blue,
                                textStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                              )),
                          Container(
                            child: Text(
                                'Professional summary :- Highly motivated and detail-oriented '
                                'Software Engineer with a strong foundation in computer '
                                'science and programming. Proficient in languages such as '
                                'Java, Node, and Dart, with hands-on experience in developing '
                                'software applications, troubleshooting, and optimizing code. '
                                'Adept at learning new technologies and tools quickly, with a '
                                'passion for problem-solving and a collaborative team-oriented '
                                'mindset. Eager to contribute to innovative projects and '
                                'continuously improve technical skills in a dynamic '
                                'development environment.'),
                            margin: EdgeInsets.only(top: 8.0),
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          ),
                          Container(
                            child: Text(
                                "Current Position :- Intern Software Engineer"),
                            margin: EdgeInsets.only(top: 8.0,bottom: 8.0),
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              color: Colors.black,
                              width: double.infinity,
                              child: RectGlassTitle(
                                text: "Skills",
                                textColor: Colors.blue,
                                textStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                              )),
                          Container(
                              child: Text('Java'),
                              padding: EdgeInsets.only(left: 16.0, top: 16.0)),
                          Container(
                            child: LinearProgressIndicator(
                              value: 80 / 100,
                              backgroundColor: Colors.blue.shade100,
                              color: Colors.blue,
                              minHeight: 20,
                            ),
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          ),
                          Container(
                              child: Text('Spring boot'),
                              padding: EdgeInsets.only(left: 16.0, top: 16.0)),
                          Container(
                            child: LinearProgressIndicator(
                              value: 75 / 100,
                              backgroundColor: Colors.blue.shade100,
                              color: Colors.blue,
                              minHeight: 20,
                            ),
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          ),
                          Container(
                              child: Text('Angular'),
                              padding: EdgeInsets.only(left: 16.0, top: 16.0)),
                          Container(
                            child: LinearProgressIndicator(
                              value: 70 / 100,
                              backgroundColor: Colors.blue.shade100,
                              color: Colors.blue,
                              minHeight: 20,
                            ),
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          ),
                          Container(
                              child: Text('Javascript'),
                              padding: EdgeInsets.only(left: 16.0, top: 16.0)),
                          Container(
                            child: LinearProgressIndicator(
                              value: 80 / 100,
                              backgroundColor: Colors.blue.shade100,
                              color: Colors.blue,
                              minHeight: 20,
                            ),
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          ),
                          Container(
                              child: Text('Mysql'),
                              padding: EdgeInsets.only(left: 16.0, top: 16.0)),
                          Container(
                            child: LinearProgressIndicator(
                              value: 85 / 100,
                              backgroundColor: Colors.blue.shade100,
                              color: Colors.blue,
                              minHeight: 20,
                            ),
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          ),
                          Container(
                              child: Text('Android/Flutter'),
                              padding: EdgeInsets.only(left: 16.0, top: 16.0)),
                          Container(
                            child: LinearProgressIndicator(
                              value: 60 / 100,
                              backgroundColor: Colors.blue.shade100,
                              color: Colors.blue,
                              minHeight: 20,
                            ),
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          ),
                          Container(
                              child: Text('Node JS'),
                              padding: EdgeInsets.only(left: 16.0, top: 16.0)),
                          Container(
                            child: LinearProgressIndicator(
                              value: 70 / 100,
                              backgroundColor: Colors.blue.shade100,
                              color: Colors.blue,
                              minHeight: 20,
                            ),
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                            margin: EdgeInsets.only(bottom: 8.0),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              color: Colors.black,
                              width: double.infinity,
                              child: RectGlassTitle(
                                text: "Education",
                                textColor: Colors.blue,
                                textStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                              )),
                          Container(child: Text('Most recent degree/certification :- ICET Certified Developer'),
                              padding: EdgeInsets.only(left: 16.0, top:16.0, right: 16.0)),
                          Container(child: Text('Institution name :- ICET'),
                              padding: EdgeInsets.only(left: 16.0, right: 16.0)),
                          Container(child: Text('Year of completion :- 2024'),
                              padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          margin: EdgeInsets.only(bottom: 16.0),)
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
