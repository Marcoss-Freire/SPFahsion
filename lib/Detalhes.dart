import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
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
                      child: Image.asset('assets/imgs/imagem1.png'), // Certifique-se de adicionar a imagem no diretório assets
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'O desfile destaca um bloco principal em preto, com combinações como preto e dourado, '
                      'ternos de veludo preto com listras douradas, e camisas pretas de tule com bordados '
                      'dourados, seguindo uma silhueta minimalista com sobreposições de elementos da camiseria em cetim.',
                      style: TextStyle(fontSize: 16, color: Colors.black), // Mudando a cor do texto para preto
                      textAlign: TextAlign.justify, // Justificando o texto
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
}
