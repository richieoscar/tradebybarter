import 'package:flutter/material.dart';

class BooksScreen extends StatefulWidget {
  BooksScreen({Key key}) : super(key: key);

  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        titleSpacing: 80,
        backgroundColor: Colors.white60,
        title: Text(
          'Books',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  _Booksitem(
                    label: 'Biography',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                 _Booksitem(
                    label: 'Drama',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _Booksitem(
                    label: 'Fairy-tale',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _Booksitem(
                    label: 'Fiction',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _Booksitem(
                    label: 'History',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _Booksitem(
                    label: 'Myth',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _Booksitem(
                    label: 'Non-Fiction',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _Booksitem(
                    label: 'Poems',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _Booksitem(
                    label: 'Romance',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _Booksitem(
                    label: 'Western',
                    Onpressed: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class _Booksitem extends StatelessWidget {
  const _Booksitem({
    this.label,
    this.Onpressed,
  });

  final String label;
  final Function Onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Onpressed,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Color(0xffa60000),
              )),
          height: 45,
          child: Center(
            child: Text(label),
          )),
    );
  }
}
