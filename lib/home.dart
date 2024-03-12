import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> product=[
    "Computer",
    "Laptop",
    "Mobile",
    "Motherboard",
    "Monitor",
    "Headphone",
    "Router",
    "Mouse",
    "Keybord",
    "LuckyStrike",
    "Sony",
  ];
  final imgList=[
    "images/d1.jpg",
    "images/d2.jpg",
    "images/d3.jpg",
    "images/d4.jpg",
    "images/d5.jpg",
    "images/d6.jpg",
    "images/d7.jpg",
    "images/d9.jpg",
    "images/d10.jpg",
    "images/d11.jpg",
    "images/d12.jpg",
    "images/d13.jpg",
    "images/d14.jpg",
    "images/d15.jpg",
    "images/d16.jpg",
    "images/d17.jpg",
    "images/d18.jpg",
    "images/d19.jpg",
    "images/Dipu.jpg",
    "images/d20.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 10,left: 4,right: 5),
          child: 
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Online Shopping",style: myStyle(22, Color.fromARGB(153, 0, 0, 0)),),
            Text(" Life is Easy Here",style: myStyle(18, Color.fromARGB(153, 0, 0, 0)),),
           Container(
           
            padding: EdgeInsets.only(top: 10,bottom: 10),
            height: 180,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(25)),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 160,
                    width: 220,
                    decoration: BoxDecoration( color: Colors.amber,
                      borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        Expanded(flex: 2,child: Text("Discount 25%",style: myStyle(18, Color.fromARGB(153, 0, 0, 0)),)),
                        Expanded(flex: 6,child: Container(width: 220,decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            
                            ),
                            image: DecorationImage(image: AssetImage("images/d1.jpg"),fit: BoxFit.cover)
                            ),),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 120,
                    width: 220,
                    decoration: BoxDecoration( color: Colors.amber,
                      borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        Expanded(flex: 2,child: Text("Discount 25%",style: myStyle(18, Color.fromARGB(153, 0, 0, 0)),)),
                        Expanded(flex: 6,child: Container( width: 220,decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            
                            ),
                            image: DecorationImage(image: AssetImage("images/d5.jpg"),fit: BoxFit.cover)
                            ),),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                   Container(
                   
                    height: 120,
                    width: 220,
                   
                    decoration: BoxDecoration( color: Color.fromARGB(255, 255, 209, 5),
                      borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        Expanded(flex: 2,child: Text("Discount 25%",style: myStyle(18, Color.fromARGB(153, 0, 0, 0)),)),
                        Expanded(flex: 6,child: Container(width: 220,decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            
                            ),
                            image: DecorationImage(image: AssetImage("images/Dipu.jpg"),fit: BoxFit.cover,)
                            ),),),
                      ],
                    ),
                    
                  ),
              
                ],
              ),
           )
             ,Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Categories",style: myStyle(22, Color.fromARGB(153, 0, 0, 0))),
                  Text("View",style: myStyle(22, Color.fromARGB(153, 0, 0, 0)))
                ],),
                Container(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: product.length,
                    itemBuilder: (context,index){
                    return  Padding(
                      padding: const EdgeInsets.only(left: 10,top: 8,bottom: 8),
                      child: Container(
                       padding: EdgeInsets.all(10),
                       
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25)),
                        child: Center(child: Text(product[index],style: myStyle(18, Color.fromARGB(153, 0, 0, 0)))),
                        
                      ),
                    );
                  },)
                ),
               Expanded(child: Container(width: double.infinity,
      child: GridView.count(crossAxisCount: 2,
    //  mainAxisSpacing: 2,crossAxisSpacing: 2,
     children: List.generate(
      imgList.length, (index) => Padding(
        padding: EdgeInsets.all(6),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),image: DecorationImage(image: AssetImage(imgList[index],),fit: BoxFit.cover)),
         
        ),
        )),    
    ),))

          ],
        ),),
      ),
    );
  }
}

  myStyle(double size,Color clr,[FontWeight? fw]){
    return TextStyle(fontSize: size,color: clr,fontWeight: fw);
  }