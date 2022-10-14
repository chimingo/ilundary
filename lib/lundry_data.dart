

import'package:flutter/material.dart';
class AddCount extends StatefulWidget {
  const AddCount({super.key});

  @override
  State<AddCount> createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  int counter=0;
  
 
  
  addCounter(){
    setState((){
      counter++;
    });
      
    
  }
   subtractCounter(){
    setState((){
      counter--;
      
    });
      
    
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$counter",
          style: const TextStyle(fontSize:25.0),
        ),
        ElevatedButton(onPressed: (){
          addCounter();}, child: const Text("Add")),
          ElevatedButton(onPressed: (){
            ElevatedButton.styleFrom(
              backgroundColor: Colors.red
            );
            if(counter <= 0){
              
             

            }else{
               setState((){
              counter--;
            });
            }

          }, child: const Text("Subtract"))
          
      ],
    );
  }
}