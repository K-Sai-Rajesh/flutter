import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final product_name;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final product_price;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final product_pic;

  const ProductDetails(
      {super.key,
      // ignore: non_constant_identifier_names
      required this.product_name,
      // ignore: non_constant_identifier_names
      required this.product_pic,
      // ignore: non_constant_identifier_names
      required this.product_price});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    var gridTile = GridTile(
      footer: Container(
        color: Colors.white,
        child: ListTile(
          leading: Text(
            widget.product_name.substring(0, 15),
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          title: Row(
            children: [Expanded(child: Text("${widget.product_price}"))],
          ),
        ),
      ),
      child: Container(
        color: Colors.white10,
        child: Image.asset(widget.product_pic),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 9,
        title: const Text("K Sai Rajesh"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 300.0,
            child: gridTile,
          )
        ],
      ),
    );
  }
}
