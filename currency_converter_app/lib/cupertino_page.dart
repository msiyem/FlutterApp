import 'package:flutter/cupertino.dart';

class CupertinoConverterPage extends StatefulWidget {
  const CupertinoConverterPage({super.key});

  @override
  State<CupertinoConverterPage> createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoConverterPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convert(){
    setState((){
      result = double.parse(textEditingController.text) * 100;
    });
  }
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey,
        middle: Text('currency converter'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result!=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0),
                style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 55,
                color: Color.fromARGB(255,255,255,255) 
                ),
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  ),
                placeholder: 'Enter the amount',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10,),
              CupertinoButton(
                onPressed:convert,
                color: CupertinoColors.black,
                child: const Text('click here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}