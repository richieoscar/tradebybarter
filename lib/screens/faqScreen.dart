import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() async {
  runApp(AccordionApp());
}

class AccordionApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAQ',
      home: FaqPage(),
    );
  }
}

class FaqPage extends StatelessWidget //__
{
  build(context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('FAQ'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SearchWidget(),
              AccordionWidget(),
              TextWidget(),
              ButtonWidget(),
            ],
          ),
        ),
      );
}

// Search Section
class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFCE303),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: HexColor("#A60000"),
                  ),
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: HexColor(
                    ("#A60000"),
                  ),
                ),
                border: InputBorder.none,
                hintText: "Search",
                contentPadding: const EdgeInsets.only(
                  left: 16,
                  right: 20,
                  top: 14,
                  bottom: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//FAQ Section
class AccordionWidget extends StatelessWidget {
  const AccordionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 450.0,
            child: Accordion(
              maxOpenSections: 1,
              headerBackgroundColor: HexColor('#C4C4C4'),
              headerPadding: EdgeInsets.only(
                top: 5.0,
                bottom: 5.0,
              ),
              headerBorderRadius: 5.0,
              rightIcon: Icon(
                Icons.arrow_drop_down,
                color: HexColor('#A60000'),
                size: 30.0,
              ),
              headerTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              children: [
                AccordionSection(
                  // isOpen: true,
                  headerText: 'What is Trade By Barter?',
                  content: Text(
                    "Trade by barter is  a platform facilitating trade by connecting persons who possess some goods and/or services and wish to exchange it for other goods and/or services.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                AccordionSection(
                  // isOpen: true,
                  headerText: 'Will the items come with warranty?',
                  content: Text(""),
                ),
                AccordionSection(
                  // isOpen: true,
                  headerText: 'Can I get cash in place of an item?',
                  content: Text(""),
                ),
                AccordionSection(
                  // isOpen: true,
                  headerText:
                      'What if I  am unable to reach the seller upon arriviving the location ?',
                  content: Text(""),
                ),
                AccordionSection(
                  // isOpen: false,
                  headerText:
                      'What do i do if a low quality item is delivered to me?',
                  content: Text(""),
                ),
                AccordionSection(
                  // isOpen: false,
                  headerText: 'Can a third party pick the item instead of me?',
                  content: Text(""),
                ),
                AccordionSection(
                  // isOpen: false,
                  headerText:
                      'Is it safe to meet a seller in an enclosed place?',
                  content: Text(""),
                ),
                AccordionSection(
                  // isOpen: false,
                  headerText:
                      'Will there be a cash refund or exchange for wrongly delivered item?',
                  content: Text(""),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
} //__

//Text Section
class TextWidget extends StatelessWidget {
  const TextWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              'Still Stuck?',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//Button section
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: HexColor("#FCE303"),
              ),
              onPressed: () {},
              child: const Text('Ask your questions'),
            ),
          ),
        ),
      ],
    );
  }
}
