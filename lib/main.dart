import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   List mylistt=[
  "الله اكبر",
  "الحمد لله",
  "سبحان الله",
  "لااله الا الله",
      ];
  int _counter = 0;
  int _index = 0,number=0;

  void incrementCounter() {
    setState(() {
      
      _counter++;
      if(_counter>33){
       _counter = 0;
       _index++;
      }
      if(_index==3){
        _index=0;
       _counter = 0;
       number++;

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
      
      title:  const Center(
                 child: Text("فذكر ان نفعت الذكرى",
                 style: TextStyle(fontWeight: FontWeight.bold,
                 fontSize: 25,
                 ),
                 ),
               
        ),
flexibleSpace: const Image(
          image: AssetImage('assets/images/sap.png'),
          fit: BoxFit.cover,
        ),
       ),
         body:Container(
           width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/sap.png"),
            fit: BoxFit.cover,
          ),
        ),
           child: Center(
             child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
              children:  [
               //     Container(
                 
               // //       width: double.infinity,
              
               // //        //height: double.infinity,
               //         child:const Image(image: AssetImage("assets/images/sap.png"),
               //         fit: BoxFit.cover,
               //         ),
           
               //      ) , 
               const SizedBox(height: 10),
             
                          const SizedBox(height:150),
         
                Text('${mylistt[_index]}',
                style: const TextStyle(fontWeight: FontWeight.bold,
               fontSize: 25,
               color: Colors.white,
               ),),
                                  
         
             Container(
                                      padding: const EdgeInsets.all(6),
         
              child: Text("عدد التسبيحات",
              style: TextStyle(fontWeight: FontWeight.bold,
               fontSize: 25,
               color: Colors.redAccent,

               ),
              ),
               color: Colors.white,
             
             ),
            
         
             Text(
                   '$_counter',
                   //style:
                   style:TextStyle(
                   fontSize: 40,
                     color: Colors.white,

                   )
                    //Theme.of(context).textTheme.headlineMedium,
                   
                 ),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: FloatingActionButton(
            
                    backgroundColor: Colors.redAccent,
                             onPressed: (){
                               
                               incrementCounter();
                               },
                             tooltip: 'Increment',
                             child: const Text("اطغط",
                             style: TextStyle(fontWeight: FontWeight.bold,
               fontSize: 20,
                              color: Colors.white,

               ),
                             ),
                     ),
                 ),  
                
         
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    
                      TextButton(onPressed: (){
                         setState(() {
                _counter = 0;
             });
                       },
                       child: const Text("البدء من جديد",style: 
                       TextStyle(fontWeight: FontWeight.bold,
                       fontSize: 20,
                                     color: Colors.white,

                       ),
                       ),
                       ),
                    
                                  const SizedBox(height:10),
         
                        TextButton(onPressed: (){
                     setState(() {
                _counter = 0;
             });
                   },
                   child: Text("الدوره رقم$number " ,style: 
                   const TextStyle(fontWeight: FontWeight.bold,
                   fontSize: 20,
                             color: Colors.white,

                   ),
                   ),
                  
                 ),
                   ],
                 ),
               
           
             ],),
           ),
         ),    
    
      ),
    );
  }
}
