import 'package:demo_2/validationdemo.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ImageDemo extends StatelessWidget {
  ImageDemo({super.key});

  String a =
      '<html> <style type=text/css> #keyDates { font-family: Arial, Helvetica, sans-serif; border-collapse: collapse; width: 100%; } #keyDates td, #keyDates th { border: 1px solid #999; padding: 4px; } #keyDates th { padding-top: 12px; padding-bottom: 12px; text-align: left; background-color: #4CAF50; color: white; } #idRegistration{ background-color: #fcdab1; } #idChoiceFilling{ background-color: #f4cdcc; } #idChoiceFillingResult{ background-color: #b2d8b3; } #idBankFeesPayment{ background-color: #d0e0ee; } tr td:last-child{ min-width: 100px; text-align: center; } </style> <body> <table id=keyDates> <tbody> <tr> <td><b>Sr.</b></td> <td><b>Activities</b></td> <td><b>Date</b></td> </tr> <tr  id="idRegistration"> <td>1</td> <td>Online registration & Online Submission of necessary documents with online registration fees</td> <td>09-06-2022<BR>to<BR>31-07-2022</td> </tr> <tr> <td>2</td> <td>Editing Registration details at ACPC , Ahmedabad</td> <td>15-06-2022<BR>to<BR>05-08-2022</td> </tr> <tr> <td>3</td> <td>Provisional list of institutes and Seat Matrix</td> <td>23-08-2022</td> </tr> <tr> <td>4</td> <td>Declaration of Provisional Merit List on the website of ACPC (subject to document verification)</td> <td>23-08-2022</td> </tr> <tr  id="idChoiceFilling"> <td>5</td> <td>Online Choice Filling for Mock Round</td> <td>23-08-2022<BR>to<BR>28-08-2022</td> </tr> <tr id="idChoiceFillingResult"> <td>6</td> <td>Display Result of Mock Round</td> <td>01-09-2022</td> </tr> <tr> <td>7</td> <td>Declaration of Final Merit List on the ACPC website (subject to document verification)</td> <td>01-09-2022</td> </tr> <tr id="idChoiceFilling"> <td>8</td> <td>Filling, alternation and locking of choices by the candidates for Actual Admission</td> <td>02-09-2022<BR>to<BR>05-09-2022</td> </tr> <tr id="idChoiceFillingResult"> <td>9</td> <td>Declaration of First Allotment Actual Admission </td> <td>08-09-2022<BR>(After 2.00 PM)</td> </tr> <tr id="idBankFeesPayment"> <td>10</td> <td>Online Deposition of Tuition Fees and online generation of admission slip</td> <td>08-09-2022<BR>to<BR>14-09-2022</td> </tr> <tr> <td>11</td> <td>Commencement of Academic Term</td> <td>14-09-2022</td> </tr> <tr> <td>12</td> <td>Online admission cancellation for Reshuffling Round</td> <td>09-09-2022<BR>to<BR>15-09-2022</td> </tr> <tr > <td>13</td> <td>Display of Vacant Seats after Actual Round</td> <td>17-09-2022</td> </tr> <tr id="idChoiceFilling"> <td>14</td> <td>Filling, alternation and locking of choices by the candidates for Reshuffling Round- 2</td> <td>17-09-2022<BR>to<BR>20-09-2022</td> </tr> <tr id="idChoiceFillingResult"> <td>15</td> <td>Declaration of result of Reshuffling Round</td> <td>23-09-2022<BR>(After 2.00 PM)</td> </tr> <tr id="idBankFeesPayment"> <td>16</td> <td>Online Deposition of Tuition and online generation of admission slip of Reshuffling Round</td> <td>23-09-2022<BR>to<BR>28-09-2022</td> </tr> <tr> <td>17</td> <td>Online admission cancellation for Reshuffling Round</td> <td>24-09-2022<BR>to<BR>30-09-2022</td> </tr> <tr> <td>18</td> <td>Display of Vacancy after Reshuffling Round</td> <td>04-09-2022</td> </tr> </tbody> </table> <br> </body> </html>';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Image")),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.remove("isRemember").then((value) {
                    return Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ValidationDemo(),
                        ));
                  });
                },
                child: Text("Sign Out"))
          ],
        )
        // body: Stack(
        //   children: [
        //
        //     ClipRRect(
        //       borderRadius: BorderRadius.circular(2),
        //       child: Image.network(
        //         "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     HtmlWidget(a),
        //
        //     Center(
        //       child: Text(
        //         "Hello",
        //         style: TextStyle(
        //             fontSize: 25,
        //             color: Colors.white,
        //             fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
