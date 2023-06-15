import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "BMI Calculator",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, fontFamily: ""),
          )),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("BMI Calculator",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 23,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2.5),
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Enter your Heigt in feet",
                    prefixIcon: const Icon(Icons.height),
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    )),
              ),
              SizedBox(height: 14,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2.5),
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Enter your wieght in kg",
                    prefixIcon: const Icon(Icons.height),
                    hintStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    )),
              ),
              SizedBox(height: 14,),
               ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(45, 3, 45, 3),
                        backgroundColor: Colors.green.shade50,
                        side: BorderSide(color: Colors.blue, width: 2.5)),
                    onPressed: () async {
                  
                    },
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Fira Sans',
                          color: Color.fromARGB(255, 10, 98, 169)),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
