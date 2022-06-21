import 'package:flutter/material.dart';

import '../../components/const.dart';
import '../../components/strings.dart';

class AddShoppingLists extends StatefulWidget {
  static const String routeName = '/addShoppingLists';

  const AddShoppingLists({Key? key}) : super(key: key);

  @override
  _AddShoppingListsState createState() => _AddShoppingListsState();
}

class _AddShoppingListsState extends State<AddShoppingLists> {
  final productTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.buyInGulliver),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              autofocus: true,
              decoration: InputDecoration(
                hintText: Strings.addProduct,
                isCollapsed: true,
                contentPadding: EdgeInsets.all(10),
                enabledBorder: borderStyle,
                focusedBorder: borderStyle,
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(child: Text(Strings.nameProduct)),
                Text(Strings.numberOfProducts),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Divider(
                    color: Colors.grey[300],
                    height: 15,
                    thickness: 1,
                  ),
                  SizedBox(height: 550),
                  Divider(
                    color: Colors.grey[300],
                    height: 15,
                    thickness: 1,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        productTextController.clear();
                      },
                      child: Text(Strings.cleanListProducts))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// построение модели списка продуктов, вводимых клиентом

const List<String> products = <String>[];

ListView productsListView(products) {
  return ListView.builder(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: const EdgeInsets.only(top: 20),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(products[index], style: TextStyle(fontSize: 22));
      });
}
