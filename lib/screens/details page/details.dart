import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:g_shopick_admin/constants/colors/colors.dart';
import 'package:g_shopick_admin/screens/categoriess/category_management.dart';

import '../addproduct/addnewproduct.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 const   kSizedBox = SizedBox(
      height: 20,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        centerTitle: true,
        title: Text("Details"),
      ),
      body: Column(children: [
        DetailsPageContainer(
            textInContainer: "Total Users", noInContainer: "50"),
        DetailsPageContainer(
            textInContainer: "Total Sales", noInContainer: "₹7,98,799"),
        DetailsPageContainer(
            textInContainer: "Total Orders", noInContainer: "25")
      ]),
      drawer: Drawer(
        child: ListView(


          children: [
       

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        primary: themeColor,
                        elevation: 4,
                        fixedSize: const Size(200, 45),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.chat),
                      label: Text("Chat management")),
                      kSizedBox,
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        primary: themeColor,
                        elevation: 4,
                        fixedSize: const Size(200, 45),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.grid_view_rounded),
                      label: Text("Product Management")),
                            kSizedBox,
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        primary: themeColor,
                        elevation: 4,
                        fixedSize: const Size(200, 45),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => CategoryManagement())));
                      },
                      icon: Icon(Icons.category),
                      label: Text("Category management")),
                            kSizedBox,
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        primary: themeColor,
                        elevation: 4,
                        fixedSize: const Size(200, 45),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag),
                      label: Text("order management")),
                            kSizedBox,
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        primary: themeColor,
                        elevation: 4,
                        fixedSize: const Size(200, 45),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.logout),
                      label: Text("Admin Logout")),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => AddNewProduct())));
      },child: Icon(Icons.add),backgroundColor: themeColor,),
    );
  }
}

class DetailsPageContainer extends StatelessWidget {
  String textInContainer;
  String noInContainer;
  DetailsPageContainer(
      {Key? key, required this.textInContainer, required this.noInContainer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      width: 400,
      height: 150,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 53, 66, 89),
          borderRadius: BorderRadius.circular(40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textInContainer,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            noInContainer,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
