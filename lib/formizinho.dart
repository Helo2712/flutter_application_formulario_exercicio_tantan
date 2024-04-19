// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Myforms extends StatefulWidget {
  const Myforms({super.key});

  @override
  State<Myforms> createState() => _MyformsState();
}

final imgStud = SizedBox(height: 100, width: 100, child: Image.asset("assets/images/estudar.jpg"),);

class _MyformsState extends State<Myforms> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String tecnico = "";
  String tecmed = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Fazer plano de estudo",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),backgroundColor: Colors.teal,),
      body: Center(child: Column(
        children: [
            SizedBox(height: 45),
            imgStud,
            SizedBox(height: 20,),
            TextField(
              controller: nomeController,
              decoration: InputDecoration(
                labelText: "Digite seu nome:",prefixIcon: Icon(Icons.abc_rounded),enabledBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(20),),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Digite seu E-mail:",prefixIcon: Icon(Icons.email),enabledBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(20),),
              ),
            ),
            SizedBox(height: 20),
            
            Text("Tipo de curso"),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 300,),
                Text("Curso tecnico"),
            Radio(value: "Curso tecnico",
           groupValue: tecnico, 
           onChanged:(value) {
             tecnico = value!;
             setState(() {
             });
           },
           ),
           SizedBox(width: 20,),
           Text("Tecnico + medio"),
            Radio(value: " tecnico + medio",
           groupValue: tecmed, 
           onChanged:(value) {
             tecmed = value!;
             setState(() {
             });
           },
           ),
          ],

    ),
        ]
      ),
    
    )
    );
  }
}