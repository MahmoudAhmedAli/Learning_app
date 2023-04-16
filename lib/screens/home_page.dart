import 'package:flutter/material.dart';
import 'package:learningappagain/component/category.dart';
import 'package:learningappagain/screens/color_page.dart';
import 'package:learningappagain/screens/family_page.dart';
import 'package:learningappagain/screens/number_page.dart';
import 'package:learningappagain/screens/phrase_page.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toku',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            category(
                name: "Number",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return nubmerPage();
                      })
                  );
                },
                color: Colors.yellow),
            SizedBox(
              height: 50,
            ),
            category(
                name: "Family Member",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return familyPage();
                      })
                  );
                },
                color: Colors.blue),
            SizedBox(
              height: 50,
            ),
            category(
                name: "Colors",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return colorPage();
                      })
                  );
                },
                color: Colors.red),
            SizedBox(
              height: 50,
            ),
            category(
                name: "phrases",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return phrasePage();
                      })
                  );
                },
                color: Colors.green),
          ],
        ),
      ),
    );
  }
}
