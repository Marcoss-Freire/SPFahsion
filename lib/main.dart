import 'dart:ui';

import 'package:aplicacao_spfashion/menu.dart';
import 'package:aplicacao_spfashion/widgets/input_decoration.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Login()
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/fungo_colorido.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView( 
                child: Column(
                  children: [
                    const SizedBox(height: 250,),
                    Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(143, 255, 255, 255),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Chloe',
                            fontSize: 40,
                            color: Colors.deepOrange,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  autocorrect: false,
                                  decoration: InputDecorations.inputDecoration(
                                    hinttext: 'user123',
                                    labeltext: 'Nome usuário',
                                    icone: const Icon(Icons.person_2_sharp, color: Colors.deepPurple),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                TextFormField(
                                  autocorrect: false,
                                  obscureText: true,
                                  decoration: InputDecorations.inputDecoration(
                                    hinttext: '****',
                                    labeltext: 'Senha',
                                    icone: const Icon(Icons.lock_outline, color: Colors.deepPurple),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Não tenho uma conta!',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                MaterialButton(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                  disabledColor: Colors.grey,
                                  color: Colors.deepOrange,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                                    child: const Text(
                                      'Entrar',
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:
                        (context) => const Menu()),
                          );
                                  },
                                )
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
                  ],
                  
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}