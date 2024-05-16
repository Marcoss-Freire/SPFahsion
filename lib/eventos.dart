import 'dart:html';
import 'package:aplicacao_spfashion/sobre_evento.dart';
import 'package:flutter/material.dart';


void eventos() => runApp(const Eventos());

class Eventos extends StatelessWidget {
  const Eventos({Key? key}) : super(key: key); // Correção: Adicionado o parâmetro 'key' e seu uso corretamente

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/fundo_sobreoevento.png'),
            fit: BoxFit.cover,
          ),
        ),
      child:Stack(children:[Center(
        child: Column(
          children: [
            
            const SizedBox(height: 30),
            Row( children: [
              SizedBox(width: 15,),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector( onTap: () {
                  // Voltar para a tela anterior
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/imgs/seta.png', width: 25, height: 25, fit: BoxFit.cover,),
                    const SizedBox(width: 20),
                  ],
                ),)
               
              ),
            const SizedBox(width: 50,),
            const Text(
              'Eventos de moda',
              style: TextStyle(
                fontFamily: 'Chloe',
                fontSize: 35,
                color: Color.fromARGB(255, 2, 0, 53),
              ),
            ),
            ],),
            
            const SizedBox(height: 30,),
               GestureDetector(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                       (context) => Sobre()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    height: 140,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 192, 115, 255),
                          Color.fromARGB(255, 255, 190, 115),
                          Color.fromARGB(172, 255, 218, 218),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'São Paulo Fashion Week',
                          style: TextStyle(
                            fontFamily: 'Chloe',
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'A Fashion Week é um momento emocionante na indústria da moda...',
                          style: TextStyle(
                            fontFamily: 'Glacial',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:  [Color.fromARGB(255, 192, 115, 255), Color.fromARGB(255, 255, 190, 115), Color.fromARGB(172, 255, 218, 218)]),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  )
                ],
              ),
               child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tecnomoda',
                    style: TextStyle(
                      fontFamily: 'Chloe',
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tecnomoda é uma feira focada na tecnologia aplicada ao setor da moda...',
                    style: TextStyle(
                      fontFamily: 'Glacial',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              
            ),
            const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:  [Color.fromARGB(255, 192, 115, 255), Color.fromARGB(255, 255, 190, 115), Color.fromARGB(172, 255, 218, 218)]),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  )
                ],
              ),
               child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Casa Museu Ema Klabin',
                    style: TextStyle(
                      fontFamily: 'Chloe',
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Casa Museu Ema Klabin traz curso, oficinas, palestras e exposição sobre moda...',
                    style: TextStyle(
                      fontFamily: 'Glacial',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              
            ),
             const SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:  [Color.fromARGB(255, 192, 115, 255), Color.fromARGB(255, 255, 190, 115), Color.fromARGB(172, 255, 218, 218)]),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  )
                ],
              ),
               child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Casa de Criadores',
                    style: TextStyle(
                      fontFamily: 'Chloe',
                      fontSize: 24,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Principal evento que revela novos talentos da moda brasileira...',
                    style: TextStyle(
                      fontFamily: 'Glacial',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              
            ),
          ],
        ),),]),
      
        
      ),
    );
  }
}

