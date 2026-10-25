import 'package:flutter/material.dart';

void main() {
  runApp( PointCounter());
}

class PointCounter extends StatefulWidget{
  @override
  State<PointCounter> createState() => _PointCounter();
}

class _PointCounter extends State<PointCounter> {
  int teamA = 0;
  int teamB = 0;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
      appBar: AppBar(
        title: Text('Points Counter',),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                   children: [
                    Column(
                      children: [
                    Text(
                      'Team A', style: TextStyle(fontSize: 32, color: Colors.black),
                    ),
              
                     Text(
                      '$teamA', style: TextStyle(fontSize: 200, color: Colors.black),
                    ),
                    SizedBox(height: 8,),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange,
                           minimumSize: Size(150, 50),
                       ),
                       onPressed: (){
                        setState(() {
                          teamA += 1;
                        });
                        },
                         child: Text('Add 1 Point',style: TextStyle( fontSize: 32,color: Colors.black)),
                         ),
                      
                     SizedBox(height: 8,),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange,
                           minimumSize: Size(150, 50),
                       ),
                      onPressed: (){
                        setState(() {
                          teamA += 1;
                        });
                       },
                         child: Text('Add 2 Point',style: TextStyle( fontSize: 32,color: Colors.black),),
                      ),
              
                       SizedBox(height: 8,),
                        ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange,
                           minimumSize: Size(150, 50),
                       ),
                      onPressed: (){
                        setState(() {
                          teamA +=1;
                        });
                       },
                         child: Text('Add 3 Point',style: TextStyle( fontSize: 32,color: Colors.black),),
                      ),
                   ],
                  ),const SizedBox(
                    height: 380,

                     child: VerticalDivider( color: Colors.grey, thickness: 1,),
              ),
                   Column(
                      children: [
                    Text(
                      'Team B', style: TextStyle(fontSize: 32, color: Colors.black),
                    ),
              
                     Text(
                      '$teamB', style: TextStyle(fontSize: 200, color: Colors.black),
                    ),
                    SizedBox(height: 8,),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange,
                           minimumSize: Size(150, 50),
                       ),
                       onPressed: (){
                        setState(() {
                          teamB += 1;
                        });
                       },
                         child: Text('Add 1 Point',style: TextStyle( fontSize: 32,color: Colors.black)),
                         ),
                      
                     SizedBox(height: 8,),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange,
                           minimumSize: Size(150, 50),
                       ),
                      onPressed: (){ 
                        setState(() {
                          teamB += 1;
                        });
                      },
                         child: Text('Add 2 Point',style: TextStyle( fontSize: 32,color: Colors.black),),
                      ),
              
                       SizedBox(height: 8,),
                        ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange,
                           minimumSize: Size(150, 50),
                       ),
                      onPressed: (){
                        setState(() {
                          teamB += 1;
                        });
                       },
                         child: Text('Add 3 Point',style: TextStyle( fontSize: 32,color: Colors.black),),
                      ),
                   ],
                  ),
               ],
                  ),
                ],
              ),
            ],
          ),
          Spacer(flex: 1,),
           ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange,
                           minimumSize: Size(150, 50),
                       ),
                       onPressed: (){
                        setState(() {
                          teamA = 0;
                          teamB = 0;
                        });
                        },
                         child: Text('Rest',style: TextStyle( fontSize: 32,color: Colors.black)),
                         ),
                    Spacer(flex: 1,)
        ],
      ),
    ),
   );
  }
}