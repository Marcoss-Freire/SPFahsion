import 'package:aplicacao_spfashion/eventosClass.dart';
import 'package:aplicacao_spfashion/sobre_evento.dart';
import 'package:flutter/material.dart';

void eventos() => runApp(Eventos());

// ignore: must_be_immutable
class Eventos extends StatelessWidget {
   Eventos({super.key}); // Correção: Adicionado o parâmetro 'key' e seu uso corretamente
  
  // Variaveis locais  para receber o texto
  String titulo = '';
  String descricao = '';
  String data ='';

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
              const SizedBox(width: 15,),
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
                    titulo = 'São Paulo Fashion Week';
                    descricao = 'A Fashion Week é um momento emocionante na indústria da moda, onde os designers apresentam suas últimas coleções em desfiles extravagantes. É um evento movimentado, cheio de criatividade, estilo e glamour. Modelos desfilam pela passarela, exibindo designs vanguardistas e estabelecendo novas tendências para a próxima temporada. '
                    'A Fashion Week não se trata apenas de roupas; é uma celebração da arte, inovação e autoexpressão. Da primeira fila aos bastidores, a energia é palpável à medida que entusiastas da moda, celebridades e membros da indústria se reúnem para testemunhar a magia da Fashion Week. É uma época em que o mundo da moda brilha intensamente, inspirando-nos a todos a abraçar o nosso estilo e criatividade únicos.';
                     data = '22 a 28 de maio de 2023';
                    // Transição para tela de eventos
                    Evento evento =  Evento(titulo, descricao,data);

                    Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                       (context) => Sobre(),
                       //adiciona os parametros 
                       settings: RouteSettings(
                        arguments: evento,
                       ),
                       ));
                  }, // Passa as informações
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
                GestureDetector(
                  onTap: () {
                    titulo = 'Tecnomoda'; // segundo
                    descricao =
                        'Tecnomoda é uma feira inovadora que mergulha no cruzamento entre a tecnologia e a moda, oferecendo uma plataforma única onde as últimas tendências em wearables, tecidos inteligentes e realidade aumentada se encontram com o mundo da alta costura e do design de moda. É um evento dinâmico que reúne mentes criativas, empreendedores e visionários que estão moldando o futuro da indústria da moda.'
                        'Neste ambiente vibrante, os participantes têm a oportunidade de explorar novas fronteiras de expressão criativa e funcionalidade, enquanto descobrem como a tecnologia está transformando cada aspecto do ciclo de vida da moda, desde o processo de design até a experiência do consumidor. É um momento emocionante para aqueles que buscam inovação e inspiração, onde as barreiras entre o digital e o analógico se desvanecem, dando lugar a uma nova era de possibilidades infinitas.';

                    // Transição para tela de eventos
                    Evento evento = Evento(titulo, descricao,data);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sobre(),
                          //adiciona os parametros
                          settings: RouteSettings(
                            arguments: evento,
                          ),
                        ));
                  }, // Passa as informações
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
                ),
                // A segunda termina aqui

                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    titulo = 'Casa Museu Ema Klabin'; // terceiro
                    descricao =
                        'A Casa Museu Ema Klabin oferece um ambiente único para explorar a interseção entre moda e arte, proporcionando uma variedade de oportunidades educacionais e culturais para entusiastas da moda, estudantes e profissionais da área. Seja através de cursos especializados, oficinas práticas, palestras inspiradoras ou exposições envolventes, a Casa Museu Ema Klabin é um centro vital de aprendizado e apreciação da moda como forma de expressão artística e cultural.'
                        'Os cursos oferecidos abordam uma ampla gama de temas, desde história da moda e análise de tendências até design de moda sustentável e técnicas de modelagem. As oficinas práticas permitem que os participantes mergulhem nas habilidades técnicas necessárias para criar suas próprias peças únicas, enquanto as palestras trazem insights valiosos de especialistas da indústria e acadêmicos renomados.';

                    // Transição para tela de eventos
                    Evento evento = Evento(titulo, descricao,data);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sobre(),
                          //adiciona os parametros
                          settings: RouteSettings(
                            arguments: evento,
                          ),
                        ));
                  }, // Passa as informações
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
                ),
                // A terceira termina aqui

                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    titulo = 'Casa de Criadores'; //Ultimo
                    descricao =
                        'A Casa de Criadores é o principal evento que destaca os novos talentos da moda brasileira, oferecendo uma plataforma vibrante para designers emergentes e estabelecidos apresentarem suas coleções inovadoras e criativas. É um momento aguardado no calendário da moda nacional, onde a diversidade, a originalidade e a expressão pessoal são celebradas.'
                        'Durante a Casa de Criadores, os participantes têm a oportunidade de testemunhar o surgimento de novas tendências e estilos, além de apoiar o desenvolvimento de uma cena de moda local vibrante e dinâmica. O evento não apenas destaca o talento dos estilistas, mas também promove discussões sobre questões relevantes da indústria da moda brasileira, como sustentabilidade, inclusão e representatividade.';

                    // Transição para tela de eventos
                    Evento evento = Evento(titulo, descricao,data);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sobre(),
                          //adiciona os parametros
                          settings: RouteSettings(
                            arguments: evento,
                          ),
                        ));
                  }, // Passa as informações
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
                          'Casa de Criadores',
                          style: TextStyle(
                            fontFamily: 'Chloe',
                            fontSize: 24,
                            color: Colors.white,
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
                ),
                // A ultima termina aqui
              ],
            ),
          ),
        ]),
      ),
    );
  }
}