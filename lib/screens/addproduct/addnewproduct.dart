import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:g_shopick_admin/constants/colors/colors.dart';

class AddNewProduct extends StatelessWidget {
  AddNewProduct({Key? key}) : super(key: key);

  final ksizedBox = SizedBox(
    height: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        title: Text("Add Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Product name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            ksizedBox,
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Price",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            ksizedBox,
            Text(
              "Images",
              style: TextStyle(fontSize: 20),
            ),
            ksizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.red,
                )
              ],
            ),
            ksizedBox,
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "Description",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            ksizedBox,
            TextFormField(
              decoration: InputDecoration(
                  hintText: "select category",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            ksizedBox,
            TextFormField(
              decoration: InputDecoration(
                  hintText: "stock count",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            ksizedBox,
            ElevatedButton(
               style: ElevatedButton.styleFrom(primary: themeColor),
              onPressed: (){}, child: Text("ADD PRODUCT"))
          ],
        ),
      ),
    );
  }
}
