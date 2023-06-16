import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController heigtController = TextEditingController();
  TextEditingController wieghtController = TextEditingController();
  TextEditingController inchController = TextEditingController();
  String msg = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "BMI Calculator",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, fontFamily: ""),
          )),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "BMI Calculator",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
                const SizedBox(
                  height: 23,
                ),
                TextFormField(
                  controller: wieghtController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 2.5),
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Enter your weight in Kg",
                      prefixIcon: const Icon(Icons.line_weight),
                      hintStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      )),
                ),
                const SizedBox(
                  height: 19,
                ),
                TextFormField(
                  controller: heigtController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 2.5),
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Enter your height in feet",
                      prefixIcon: const Icon(Icons.height),
                      hintStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: inchController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 2.5),
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Enter your height in inch",
                      prefixIcon: const Icon(Icons.height),
                      hintStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      )),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.fromLTRB(45, 5, 45, 5),
                        backgroundColor: Colors.green.shade50,
                        side: const BorderSide(
                          color: Colors.blue,
                          width: 2.5,
                        )),
                    onPressed: () async {
                      setController();
                    },
                    child: const Text(
                      "Calculate",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Fira Sans',
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue),
                    )),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 10, 20, 1),
                  height: 200,
                  decoration: BoxDecoration(
                    
                    border: Border.all(color: Colors.blue,width: 2.5),
                    color: Colors.green.shade50,
                      borderRadius: const BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.center,
                  child: Text(
                    msg,
                    maxLines: 2,
                    style: const TextStyle(
                        fontSize: 22,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontFamily: ''),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  setController() {
    var controllerHeight = heigtController.text.toString();
    var heightinfeet = double.parse(controllerHeight);
    var controllerWeight = wieghtController.text.toString();
    var weight = double.parse(controllerWeight);
    var controllerInch = heigtController.text.toString();
    var heightinInch = double.parse(controllerInch);
    var height = (heightinfeet * 12) + heightinInch;
    var tcm = height * 2.54;
    var tm = tcm / 100;
    setState(() {
      var bmi = weight / (tm * tm);
      if (bmi < 18.5) {
        msg = "    BMI= ${bmi.toStringAsFixed(2)} \nOh! Underweight";
        
      } else if (bmi > 25) {
        msg = "    BMI = ${bmi.toStringAsFixed(2)}\nOh! Overweighted";
      } else {
        msg = "      BMI = ${bmi.toStringAsFixed(2)}\nYou are healthy person";
      }
    });
  }
}
