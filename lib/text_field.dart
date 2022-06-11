import 'package:demo_project/assignments/contact_book.dart';
import 'package:flutter/material.dart';

class TextFieldEg extends StatelessWidget {
  const TextFieldEg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Text Field'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 340,
              width: 500,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Let's Login",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                const  Padding(
                    padding:
                        EdgeInsets.only(top: 40, left: 8, right: 8, bottom: 8),
                    child: TextField(
                      autofocus: true,
                      
                      toolbarOptions: ToolbarOptions(copy: true, paste: true),
                      textCapitalization: TextCapitalization.words,
                      decoration:  InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        label: Text('Username'),
                        isDense: true,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                 const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: TextField(
                    
                      toolbarOptions:
                           ToolbarOptions(copy: true, paste: false),
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration:  InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        label: Text('Enter password'),
                        isDense: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 220, top: 20),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          iconSize: 30,
                          hoverColor: Colors.pink,
                         onPressed: (){},
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  

  
}
