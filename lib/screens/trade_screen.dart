

import 'package:flutter/material.dart';
import 'package:trade_by_barter/models/item.dart';
import 'package:trade_by_barter/networking/api_networking.dart';

class Trade extends StatelessWidget {
  
  //MAKING THE API CALL HERE
  Future<List<Item>> future = ApiNetworkingManager.getItems();

  Widget showItems(BuildContext context){
    return Container(
      child: FutureBuilder<List<Item>>(future: future,builder: (context, snapshot){
        if( snapshot.connectionState == ConnectionState.done  && snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data.length,
              itemBuilder: (context, index){
            return ListTile(
              leading: Container( width: 200,child: Image.network(snapshot.data[index].image)),
              title: Text(snapshot.data[index].itemName),
              subtitle: Text(snapshot.data[index].description),
            );
          });
        }
        else {
          return Center(child: CircularProgressIndicator());
        }
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Trade's List",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )),
      // ignore: missing_return
      body: showItems(context),
    );
  }

  Widget button() {
    return Container(
      width: 200.0,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.yellow),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
        ),
        onPressed: (){},
        child: Text(
          "Proceed",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

  
