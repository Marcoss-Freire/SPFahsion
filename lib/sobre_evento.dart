
import 'package:aplicacao_spfashion/eventosClass.dart';
import 'package:flutter/material.dart';

//void eventos() => runApp(Sobre());

class Sobre extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final evento = ModalRoute.of(context)!.settings.arguments as Evento;
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/fundo_sobreoevento.png'),
            fit: BoxFit.cover,
          ),
        ),
        
       child:Stack(children:[Center(
         child:SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        child: Column(
          children: [
           
            Row( children: [
              
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
            Text(
              evento.titulo,
              style: const TextStyle(
                fontFamily: 'Chloe',
                fontSize: 30,
                color: Color.fromARGB(255, 2, 0, 53),
              ),
            ),
          ],
        ),
        
        const SizedBox(height: 10,),

         Row( children: [
          const SizedBox(width: 35,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/imgs/brilho.png', width: 40, height: 40, fit: BoxFit.cover,),
                
              ],
            ),

           const SizedBox(width: 10,),
           const Text(
              'Sobre o evento',
              style: TextStyle(
                fontFamily: 'Glacial',
                fontSize: 20,
                color: Color.fromARGB(174, 2, 0, 53),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Text(
          evento.descricao,
          textAlign: TextAlign.justify,
    
          style: const TextStyle(
          fontFamily: 'Glacial',
          fontSize: 20,
          ),),
    const SizedBox(height: 10,),
      GestureDetector( onTap: () {
                  // Voltar para a tela anterior
                },
              //Calendario 
                child: Container(width: 380,height: 140,
                  decoration: const BoxDecoration(
                  image: DecorationImage(alignment: Alignment.center,
                    image: AssetImage('assets/imgs/1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                 child:  Padding(padding: EdgeInsets.fromLTRB(150, 60, 60, 0),child: 
                  Text ( evento.dataAnterior,
                    style  : TextStyle(
                       fontFamily: 'Glacial',
                          fontSize: 18,
                          color: Color.fromARGB(255, 10, 10, 10),
                        ),),)
                ),),
               const SizedBox(height: 10,),
      GestureDetector( onTap: () {
                  // Voltar para a tela anterior
                },
              
              //Calendario 2
                child: Container(width: 480,height: 180,
                  decoration: const BoxDecoration(
                  image: DecorationImage(alignment: Alignment.center,
                    image: AssetImage('assets/imgs/2.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                 child: Padding(padding: EdgeInsets.fromLTRB(160, 65, 0, 0),child: 
                  Text ( evento.dataPosterior,
                    style  : TextStyle(
                          fontFamily: 'Glacial',
                          fontSize: 18,
                          color: Color.fromARGB(255, 10, 10, 10),
                        ),),)
                ),),
        ],),),),),],),
      ),
    );
  }

}