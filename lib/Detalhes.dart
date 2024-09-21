import 'package:flutter/material.dart';
import 'package:aplicacao_spfashion/eventos.dart';
import 'package:aplicacao_spfashion/sobre_evento.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:aplicacao_spfashion/lookClass.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final look = ModalRoute.of(context)!.settings.arguments as Look;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/fundo_sobreoevento.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView( // Adicionando rolagem
          child: Stack(
            children: [
              // Conteúdo da tela
              Container(
                margin: const EdgeInsets.all(16.0), // Adicionando margem ao redor da tela
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const SizedBox(width: 15),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              // Voltar para a tela anterior
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/imgs/seta.png',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Center(
                      // Centralizando a imagem
                      child: Image.asset(look.imagem), // Certifique-se de adicionar a imagem no diretório assets
                    ),
                    const SizedBox(height: 16),
                    Text(
                      look.descricao,
                      style: TextStyle(fontSize: 16, color: Colors.black), // Mudando a cor do texto para preto
                      textAlign: TextAlign.justify, // Justificando o texto
                    ),
                    const SizedBox(height: 20),
              Container(
  margin: EdgeInsets.symmetric(
    horizontal: MediaQuery.of(context).size.width * 0.10,
  ),
  child: Align(
    alignment: Alignment.center,
    child: SizedBox(
      width: 140,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        disabledColor: Colors.grey,
        color: const Color.fromARGB(255, 225, 160, 255),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text(
                'Saiba Mais',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Glacial',
                ),
              ),
            )
          ],
        ),
        onPressed: () {
          _launchURL(look.link);
        },
      ),
    ),
  ),
),
                    const SizedBox(height: 20),
                  ],
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

