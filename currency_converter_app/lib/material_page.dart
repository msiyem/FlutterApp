import 'package:flutter/material.dart';

class MaterialConverterPage extends StatefulWidget {
  const MaterialConverterPage({super.key});

  @override
  State<MaterialConverterPage> createState() => _TextFileState();
}

class _TextFileState extends State<MaterialConverterPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;
  void convert(){
    setState((){
      result = double.parse(textEditingController.text) * 100;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('currency converter'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result!=0? result.toStringAsFixed(2): result.toStringAsFixed(0),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Enter the amount',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 10,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed:convert,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              
                child: Text('click here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
