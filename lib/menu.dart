import 'package:aplicacao_spfashion/eventos.dart';
import 'package:aplicacao_spfashion/eventosClass.dart';
import 'package:aplicacao_spfashion/sobre_evento.dart';
import 'package:aplicacao_spfashion/detalhes.dart'; // Adicione a importação da tela Detalhes
import 'package:aplicacao_spfashion/lookClass.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void menu() {
  runApp(Menu());
}

class Menu extends StatelessWidget {
  Menu({super.key});

  // Variáveis locais para receber o texto
  String titulo = '';
  String descricao = '';
  String dataAnterior = '';
  String dataPosterior = '';
  String imagem = '';
  String link = '';

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
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                    child: const Text(
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
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05, top: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Eventos()),
                        );
                      },
                      child: SizedBox(
                        width: 70,
                        height: 70,
                        child: Image.asset(
                          'assets/imgs/vermais.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      titulo = 'São Paulo Fashion Week';
                      descricao = 'A Fashion Week é um momento emocionante na indústria da moda, onde os designers apresentam suas últimas coleções em desfiles extravagantes. É um evento movimentado, cheio de criatividade, estilo e glamour. Modelos desfilam pela passarela, exibindo designs vanguardistas e estabelecendo novas tendências para a próxima temporada. '
                          'A Fashion Week não se trata apenas de roupas; é uma celebração da arte, inovação e autoexpressão. Da primeira fila aos bastidores, a energia é palpável à medida que entusiastas da moda, celebridades e membros da indústria se reúnem para testemunhar a magia da Fashion Week. É uma época em que o mundo da moda brilha intensamente, inspirando-nos a todos a abraçar o nosso estilo e criatividade únicos.';
                      dataAnterior = '09 a 14 de abril de 2024';
                      dataPosterior = 'A definir';

                      // Transição para tela de eventos
                      Evento evento = Evento(titulo, descricao, dataAnterior, dataPosterior);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sobre(),
                          settings: RouteSettings(
                            arguments: evento,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 360,
                      decoration: const BoxDecoration(
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
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
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
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                    child: const Text(
                      'Looks + impactantes',
                      style: TextStyle(fontSize: 24, fontFamily: 'Chloe', color: Colors.deepOrange),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
                                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.10),
                    child: SizedBox(
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () {
                              descricao = 'O desfile destaca um bloco principal em preto, com combinações como preto e dourado, '
                              'ternos de veludo preto com listras douradas, e camisas pretas de tule com bordados '
                              'dourados, seguindo uma silhueta minimalista com sobreposições de elementos da camiseria em cetim.';
                              imagem = 'assets/imgs/imagem1.png';
                              link = 'https://br.fashionnetwork.com/galeries/photos/Balmain,54084.html';
                              // Transição para tela de eventos
                              Look look =  Look(imagem, descricao, link);
                              Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Detalhes(),
    settings: RouteSettings(
      arguments: look, // Passar o objeto Look aqui
    ),
  ),
);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                              child: SizedBox(
                                width: 110,
                                child: Image.asset('assets/imgs/imagem1.png'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: GestureDetector(
                              onTap: () {
                                descricao = 'Nos bastidores do desfile Mugler Outono/Inverno 2024/2025 em Paris, a energia é intensa. A equipe trabalha em detalhes finais das peças, que destacam a sensualidade e a força feminina. Modelos usam roupas com silhuetas estruturadas, cinturas marcadas e cortes ousados, mantendo a essência dramática e futurista da marca.'
                              'Tons escuros, como preto e azul marinho, dominam a paleta, com toques metálicos que trazem modernidade. O cabelo é estilizado de forma gráfica, e a maquiagem carrega um visual intenso, focando nos olhos e lábios para acentuar o poder das criações.';                              imagem = 'assets/imgs/imagem2.png';
                              imagem = 'assets/imgs/imagem2.png';
                              link = 'https://br.fashionnetwork.com/galeries/photos/Mugler,54206.html';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Detalhes()), // Navega para a tela Detalhes
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                child: SizedBox(
                                  width: 110,
                                  child: Image.asset('assets/imgs/imagem2.png'),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: GestureDetector(
                              onTap: () {
                                descricao = descricao = 'O desfile da Chloé para a coleção Outono/Inverno 2024/2025 em Paris apresentou uma abordagem moderna e elegante da moda feminina. A marca explorou silhuetas sofisticadas, equilibrando peças estruturadas com elementos fluidos. A paleta de cores girou em torno de tons terrosos, como marrons e verdes, com toques sutis de cores vibrantes para dar contraste.'
                              'Os tecidos escolhidos variaram entre lã, seda e materiais tecnológicos, trazendo um toque de conforto e contemporaneidade. As camadas e sobreposições foram destaque, conferindo profundidade às peças. Nos detalhes, bordados discretos e acessórios minimalistas, como botas e bolsas estruturadas, complementaram os looks sem tirar o foco das roupas.';
                              imagem = 'assets/imgs/imagem3.png';
                              link = 'https://br.fashionnetwork.com/galeries/photos/Chloe,54098.html';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Detalhes()), // Navega para a tela Detalhes
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                child: SizedBox(
                                  width: 110,
                                  child: Image.asset('assets/imgs/imagem3.png'),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: GestureDetector(
                              onTap: () {
                                descricao = 'A coleção outono/inverno 2024 da Hermès destaca uma estética urbana e sofisticada, inspirada na energia das noites de Nova York. As peças são desenhadas para uma mulher cosmopolita, com casacos volumosos e texturizados em tons quentes, como terracota e vermelho, combinados com detalhes mais sutis. A coleção celebra o equilíbrio entre elegância e funcionalidade, incorporando elementos de alfaiataria com um toque moderno, refletindo o clima de uma grande cidade em pleno outono.';
                              imagem = 'assets/imgs/imagem4.png';
                              link = 'https://br.fashionnetwork.com/galeries/photos/Chloe,54098.html';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Detalhes()), // Navega para a tela Detalhes
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                child: SizedBox(
                                  width: 110,
                                  child: Image.asset('assets/imgs/imagem4.png'),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: GestureDetector(
                              onTap: () {
                                descricao = 'A coleção primavera/verão 2024 da Burberry traz uma leveza característica, com foco em vestidos fluidos e estampados. O uso de padrões geométricos e uma paleta de cores suaves, como tons de rosa, oferece um visual fresco e elegante, ideal para as estações mais quentes. As peças são desenhadas para mulheres que apreciam a simplicidade com um toque sofisticado, e a coleção reflete um espírito jovial e contemporâneo, mantendo a herança clássica da marca.';
                              imagem = 'assets/imgs/imagem5.png';
                              link = 'https://br.fashionnetwork.com/galeries/photos/Burberry,46609.html';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Detalhes()), // Navega para a tela Detalhes
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
                                child: SizedBox(
                                  width: 110,
                                  child: Image.asset('assets/imgs/imagem5.png'),
                                ),
                              ),
                            ),
                          ),
                        ],
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
                                        ),
                                    ),
                                ]
                            ),
                            
                            GestureDetector(
          onTap: () {
            _launchURL('https://rachacuca.com.br/quiz/25468/moda-para-quem-conhece/');
          }, // Ação ao tocar na imagem
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30), // Define o raio dos cantos
              child: SizedBox(
                width: 800,
                child: Image.asset('assets/imgs/imgquiz.png', fit: BoxFit.cover,), // Define a imagem
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
    Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
