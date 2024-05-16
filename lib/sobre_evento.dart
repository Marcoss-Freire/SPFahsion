import 'package:flutter/material.dart';
import 'package:aplicacao_spfashion/sobre_evento.dart';

void eventos() => runApp(Sobre());

class Sobre extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
           const Text(
              'São Paulo Fashion Week',
              style: TextStyle(
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
        const Text('    A Fashion Week é um momento emocionante na indústria da moda, onde os designers apresentam suas últimas coleções em desfiles extravagantes. É um evento movimentado, cheio de criatividade, estilo e glamour. Modelos desfilam pela passarela, exibindo designs vanguardistas e estabelecendo novas tendências para a próxima temporada. '
     'A Fashion Week não se trata apenas de roupas; é uma celebração da arte, inovação e autoexpressão. Da primeira fila aos bastidores, a energia é palpável à medida que entusiastas da moda, celebridades e membros da indústria se reúnem para testemunhar a magia da Fashion Week. É uma época em que o mundo da moda brilha intensamente, inspirando-nos a todos a abraçar o nosso estilo e criatividade únicos.',
    textAlign: TextAlign.justify,
    
     style: TextStyle(
      fontFamily: 'Glacial',
      fontSize: 20,
    
      
     ),),
    const SizedBox(height: 10,),
      GestureDetector( onTap: () {
                  // Voltar para a tela anterior
                },
              
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/imgs/1.png', width: 400, fit: BoxFit.contain,),
                    
                  ],
                ),),
              
        
      GestureDetector( onTap: () {
                  // Voltar para a tela anterior
                  
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/imgs/2.png', width: 400, fit: BoxFit.contain,),
                    
                  ],
                ),),
  
        ],),),),),],),
      ),
    );
  }

}