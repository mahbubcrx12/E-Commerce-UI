import 'package:assesment_one/collection_data.dart';
import 'package:assesment_one/screen/new_in.dart';
import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  final collectionList = Collection.generateCollection();

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
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
                                size: 25,
                              ),
                              Text(
                                "Collections",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.black54,
                                size: 30,
                              )
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Collections",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: Color(0XFFD8957C),
                                size: 40,
                              )
                            ],
                          )),
                      Expanded(
                          flex: 3,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.collectionList.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                          radius: 40,
                                          backgroundImage: AssetImage(
                                              "${widget.collectionList[index].collectionImage.toString()}")),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Center(
                                          child: Text(
                                            "${widget.collectionList[index].collectionType.toString()}",
                                            style: TextStyle(fontSize: 23),
                                          ),
                                        ),
                                      ),
                  
                                    ],
                                  ),
                                );
                              })
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "New In",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewIn()));
                              },
                              child: Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 8,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: widget.collectionList.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                  
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "${widget.collectionList[index].collectionImage}",
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius: BorderRadius.circular(25)),
                                            height: MediaQuery.of(context).size.height * 0.30,
                                            width: MediaQuery.of(context).size.width * 0.450,
                  
                  
                                          ),
                                          Positioned(
                                          bottom: 30,
                                          right: 20,
                                              child: Container(
                                               decoration: BoxDecoration(
                                                 color: Colors.white,
                                                 borderRadius: BorderRadius.circular(25)
                                               ),
                                                height: 50,
                                                width: 50,
                                                child: Icon(Icons.notifications,
                                                    color: Color(0XFFF9D1E6),
                                                    size: 50,
                                                ),
                  
                                          )
                                          ),
                                          Positioned(
                                              bottom: 60,
                                              right: 20,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(25)
                                                ),
                                                height: 50,
                                                width: 50,
                                                child: Icon(Icons.notifications,
                                                  color: Color(0XFFF9D1E6),
                                                  size: 50,
                                                ),
                  
                                              )
                                          ),
                                          Positioned(
                                              top: 10,
                                              right: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius: BorderRadius.circular(25)
                                                ),
                                                height: 50,
                                                width: 50,
                                                child: Icon(Icons.heart_broken,
                                                  color: Colors.red,
                                                  size: 30,
                                                ),
                  
                                              )
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("\$""${widget.collectionList[index].price}",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                  
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("${widget.collectionList[index].name}",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                  
                                          ),
                                        ),
                                      )
                  
                                    ],
                                  ),
                                );
                              })),
                  
                      Expanded(
                          flex: 2,
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.5,
                            width:  MediaQuery.of(context).size.width*0.80,
                            decoration: BoxDecoration(
                                color: Color(0XFF514EB6),
                                borderRadius: BorderRadius.circular(30)
                  
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                  
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white
                                    ),
                                    height: 50,
                                    width: 50,
                                    child: Icon(Icons.search,color: Color(0XFF514EB6),),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*.5,
                                    child: TextField(
                                      // enabled: true,
                                      // clipBehavior: Clip.none,
                                      //obscureText: true,
                                      decoration: InputDecoration(
                                        alignLabelWithHint: false,
                  
                                          labelText: "Find Something",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20
                                          )
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.density_small_outlined,size: 20,color: Colors.white,)
                  
                                ],
                              ),
                            ),
                  
                          )
                      ),
                  
                    ],
                  ),
                ),
              ),
          
              Positioned(
                  right: 180,
                  bottom: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0XFFD8957C),width: 4)
                    ),
                    height: 60,
                    width: 60,
                    child: Icon(Icons.add,color: Colors.black54,size: 25,),
              )
              )
            ],
          )

      ),
    );
  }
}
