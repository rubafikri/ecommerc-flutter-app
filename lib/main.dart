
import 'package:ecommerce_app/provider/adminMode.dart';
import 'package:ecommerce_app/provider/cartItem.dart';
import 'package:ecommerce_app/provider/modelHud.dart';
import 'package:ecommerce_app/screens/admin/OrdersScreen.dart';
import 'package:ecommerce_app/screens/admin/addProduct.dart';
import 'package:ecommerce_app/screens/admin/adminHome.dart';
import 'package:ecommerce_app/screens/admin/editProduct.dart';
import 'package:ecommerce_app/screens/admin/manageProduct.dart';
import 'package:ecommerce_app/screens/admin/order_details.dart';
import 'package:ecommerce_app/screens/login_screen.dart';
import 'package:ecommerce_app/screens/signup_screen.dart';
import 'package:ecommerce_app/screens/user/CartScreen.dart';
import 'package:ecommerce_app/screens/user/homePage.dart';
import 'package:ecommerce_app/screens/user/productInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ModelHud>(
          create: (context) => ModelHud(),
        ),
        ChangeNotifierProvider<CartItem>(
          create: (context) => CartItem(),
        ),
        ChangeNotifierProvider<AdminMode>(
          create: (context) => AdminMode(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.id,
        routes: {
          OrderDetails.id: (context) => OrderDetails(),
          OrdersScreen.id: (context) => OrdersScreen(),
          CartScreen.id: (context) => CartScreen(),
          ProductInfo.id: (context) => ProductInfo(),
          EditProduct.id: (context) => EditProduct(),
          ManageProducts.id: (context) => ManageProducts(),
          LoginScreen.id: (context) => LoginScreen(),
          SignupScreen.id: (context) => SignupScreen(),
          HomePage.id: (context) => HomePage(),
          AdminHome.id: (context) => AdminHome(),
          AddProduct.id: (context) => AddProduct(),
        },
      ),
    );
  }
}
