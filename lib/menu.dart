import 'package:aplicacao_spfashion/eventos.dart';
import 'package:aplicacao_spfashion/sobre_evento.dart';
import 'package:flutter/material.dart';

void menu() {
    @override
    Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: Menu()
    );
  }
    runApp(const Menu());
}

class Menu extends StatelessWidget {
    const Menu({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
            home: Scaffold(
              
                appBar: AppBar(
                    title: const Text(
                        'SPFashion',
                        style: TextStyle(fontSize: 26, fontFamily: 'Chloe', color: Colors.pinkAccent),
                    ),
                    centerTitle: true,
                ),
                body: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/imgs/fundo_menu.png'),
                            fit: BoxFit.cover,
                        ),
                    ),
                    child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                                      child:const  Text(
                                        '| Acompanhe os eventos de SP!',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'Chloe',
                                        ),
                                      ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05, top: 15.0), // Reduzindo o espaçamento à esquerda do container
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Eventos())
                                        );
                                      },
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        child: Image.asset(
                                          'assets/imgs/vermais.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10), // Espaço entre os elementos
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Sobre()),
                                      );
                                    },
                                    child: Container(
                                      width: 360,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(255, 192, 115, 255),
                                            Color.fromARGB(255, 255, 190, 115),
                                            Color.fromARGB(172, 255, 218, 218),
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          bottomLeft: Radius.circular(30.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'São Paulo Fashion Week',
                                              style: TextStyle(
                                                fontSize: 22,
                                                fontFamily: 'Chloe',
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'A Fashion Week é um momento emocionante na indústria da moda. É um período onde grandes estilistas e marcas apresentam suas coleções e tendências para a próxima estação.',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Glacial',
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            const SizedBox(height: 20),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                                        child: const Text(
                                            'Looks + impactantes',
                                            style: TextStyle(fontSize: 24, fontFamily: 'Chloe', color: Colors.deepOrange),
                            ),
                                    ),
                                ]
                            ),
                            const SizedBox(height: 10,),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: MediaQuery.of(context).size.width * 0.10),
                                child: SizedBox(
                                    height: 140,
                                    child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                            ClipRRect(
                                                borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                child: SizedBox(
                                                    width: 110,
                                                    child: Image.asset('assets/imgs/imagem1.png'),
                                                ),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imgs/imagem2.png'),
                                                    ),
                                                ),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imgs/imagem3.png'),
                                                    ),
                                                ),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imgs/imagem4.png'),
                                                    ),
                                                ),
                                            ),
                                            Padding(
                                                padding:const EdgeInsets.only(left: 24.0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                                    child: SizedBox(
                                                        width: 110,
                                                        child: Image.asset('assets/imgs/imagem5.png'),
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                            const SizedBox(height: 20,),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.10,),
                              child: Align(
                              alignment: Alignment.centerRight,
                              child:  SizedBox(
                                width: 140,
                                child: MaterialButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                disabledColor: Colors.grey,
                                color: Color.fromARGB(255, 225, 160, 255),
                               child: Row(
                                 children:[ Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      child: const Text(
                                        'Vote agora!',
                                        style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Glacial'),
                                      ),
                                  )]
                              ),
                              onPressed: () {
                                 Navigator.push(
                                    context,
                                    MaterialPageRoute(builder:
                                    (context) => const Menu()),
                                 );
                                        },
                            ),
                            ),
                            ),
                           
                            ),
                            
                          
                            const SizedBox(height: 20),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                                        child: const Text(
                                            'Você é um expert de moda?',
                                            style: TextStyle(fontSize: 24, fontFamily: 'Chloe', color: Colors.pinkAccent),
                                        ),
                                    ),
                                ]
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                  child: SizedBox(
                                      width: 800,
                                      child: Image.asset('assets/imgs/imgquiz.png', fit: BoxFit.cover,),
                                      
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