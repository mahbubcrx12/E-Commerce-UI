import 'package:assesment_one/collection_data.dart';
import 'package:assesment_one/screen/collection.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  final Collection? product;
  ProductsPage({this.product});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final _sizeList = [ "XXs", "M", "L","XL"];

  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black54,
                    ),
                    Text(
                      "Products",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.black54,
                      size: 30,
                    )
                  ],
                )),
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 150,
                        backgroundImage: AssetImage(
                          "${widget.product!.collectionImage}",
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "${widget.product!.name}",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "${widget.product!.collectionType}",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Text(
                      "\$" "${widget.product!.price}",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (_, index) => SizedBox(
                      width: 5,
                    ),
                    itemCount: _sizeList.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: (() {
                          setState(() {
                            selected = index;
                          });
                        }),
                        child: Container(
                         height: 50,
                         width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: selected == index
                                    ? Colors.white
                                    : Colors.black.withOpacity(.3)),
                            color: selected == index
                                ? Color(0xff514EB6)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                _sizeList[index],
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
                ),SizedBox(height: 10,),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(about,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                      ),
                      
                      ),
                    )
                  )
                
                )
              ],
            )
          ),
        ),

        Positioned(
         bottom: 5,
         left: 30,
         right: 30,
          child: InkWell(
            onTap: (() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CollectionPage()));
            }),
            child: Container(
               height: 80,
            width: 200,
            decoration: BoxDecoration(
              color: Color(0xff514EB6),
              borderRadius: BorderRadius.circular(30)
            ),
              child: Center(
                child: Text("Add To Cart",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,color: Colors.white
                ),),
              ),
          
                  ),
          ))
          ],
        )
      ),
    );
  }
}
