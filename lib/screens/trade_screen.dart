import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trade_by_barter/models/item.dart';
import 'package:trade_by_barter/navigation/navigation.dart';
import 'package:trade_by_barter/networking/api_networking.dart';
import 'package:trade_by_barter/provider/api_provider.dart';

import '../constants.dart';

class Trade extends StatelessWidget {
  //MAKING THE API CALL HERE
  //static Future<List<Item>> future = ApiNetworkingManager.getAllItems();

  Widget showItems(BuildContext context) {
    var provider = Provider.of<ApiProvider>(context);
    return Container(
      child: provider.isLoading
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                 // crossAxisSpacing:5,
                mainAxisSpacing: 75,
              ),
              itemCount: provider.tradeItems.length,
              itemBuilder: (context, index) {

                return  Expanded(
                  child: GestureDetector(
                    onTap: (){
                      var price = provider.tradeItems[index].price;
                      var image = provider.tradeItems[index].image;
                      var desc = provider.tradeItems[index].description;
                      var itemEx = provider.tradeItems[index].itemOfExchange;
                      var name = provider.tradeItems[index].itemName;
                      Item item = Item(name, price, null, desc, itemEx, image, 0);
                      AppNavigator.navigateToDetail(context, item);
                    },
                    child: Container(
                     // margin: EdgeInsets.all(5),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Card(
                                child: Container(
                                  constraints: BoxConstraints.expand(width: 400, height: 200),
                                    child: Image.network(
                                        provider.tradeItems[index].image,
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(provider.tradeItems[index].itemName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                              ),
                              ),
                              SizedBox(height: 5,),
                              Text("Value: ${provider.tradeItems[index].price.toString()}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: KfilterBorderColors
                                ),),
                            ],
                          )),
                  ),
                );
              }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => AppNavigator.navigateBack(context),
        ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
              "Trade's List",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),

      ),
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
        onPressed: () {},
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
