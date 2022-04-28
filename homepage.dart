import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  var num = 0, num1 = 75, result = 0;

  final TextEditingController t1 = TextEditingController(text: "0");

  void domultiply() {
    setState(() {
      num = int.parse(t1.text);
      result = num * num1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dollar Convertor'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //display image
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Image.asset('image/pc.png'),
                ),
              ),

              //ask price
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: t1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText:'Enter the price of PC in Dollars',
                        border:const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),

              //button
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: (){
                      setState((){
                        domultiply();
                      });
                    },
                    color: Colors.blue,
                    child: const Text('OK',style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),

              //display
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child:Container(
                      child: Center(
                        child: Text("The price in Rupees will be => $result",style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

