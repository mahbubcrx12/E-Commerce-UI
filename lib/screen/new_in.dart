import 'package:assesment_one/collection_data.dart';
import 'package:assesment_one/screen/products.dart';
import 'package:assesment_one/widget/custom_clip_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NewIn extends StatefulWidget {
  final newInList = Collection.generateCollection();


  @override
  State<NewIn> createState() => _NewInState();
}

class _NewInState extends State<NewIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black54,
                    ),
                    Text(
                      "New In",
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New In",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.deepOrangeAccent,
                      size: 50,
                    )
                  ],
                ),
              ),
              GridView.builder(
                  physics: ScrollPhysics(),

                  // scrollDirection: Axis.vertical,
                  
                  shrinkWrap: true,
                  itemCount: widget.newInList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                    childAspectRatio: MediaQuery.of(context).size.width /
                                     (MediaQuery.of(context).size.height/1.65 ),
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 18),
                      height: 800,
                      child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        InkWell(
                          
                          onTap: (){
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>
                          ProductsPage(product: widget.newInList[index],),
                          )
                          );
                      },
                          child: Column(
                            children: [
                              
                           CircleAvatar(
                            radius: 62,
                            
                            backgroundImage: AssetImage("${widget.newInList[index].collectionImage}"),
                          ),
                                            
                          
                          
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text("\$""${widget.newInList[index].price}",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                            ),
                            ),
                          ),
                          Text("${widget.newInList[index].name}",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                            ),
                            ),
                             Text("${widget.newInList[index].collectionType}",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                            ),
                            ),
                              
                            ],
                          ),
                        ),
                        Positioned(
                          right: 1,
                          top: 80,
                          child: ClipPath(
                           clipper: CustomContainerClipper(),
                            child: Container(
                              height: 50,
                              width: 90,
                              decoration: BoxDecoration(
                                
                                color: Colors.red
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 2),
                                child: Text("Add To Cart",style: TextStyle(
                                   fontSize: 16,
                                  color: Colors.white,fontWeight: FontWeight.bold
                                ),),
                              ),
                            ),
                          ))
                      ]
                    ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    ));
  }
}

 