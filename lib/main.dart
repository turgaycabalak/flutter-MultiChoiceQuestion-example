import 'package:flutter/material.dart';
import 'package:multiple_choice/model/MultipleChoice.dart';
import 'model/Question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Exam myExam = Exam();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Text(
                  myExam.getQuestion(),
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myExam.printAnswer(Answer.A);
                        });
                      },
                      child: Text(myExam.getChoice(0)),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myExam.printAnswer(Answer.B);
                        });
                      },
                      child: Text(myExam.getChoice(1)),
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            myExam.printAnswer(Answer.C);
                          });
                        },
                        child: Text(myExam.getChoice(2)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            myExam.printAnswer(Answer.D);
                          });
                        },
                        child: Text(myExam.getChoice(3)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Sonuç Bilgisi",
              style: TextStyle(fontSize: 20.0),
            ),
            Row(children: myExam.results,),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
