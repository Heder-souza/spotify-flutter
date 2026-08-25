import 'package:flutter/material.dart';

class PlayListSreen extends StatefulWidget {
  const PlayListSreen({super.key});
  @override
  State<PlayListSreen> createState() => _PlayListSreenState();
}

class _PlayListSreenState extends State<PlayListSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // aqui eu defino a cor de fundo da tela como preto
      backgroundColor: Colors.black,

      // aqui começa a barra do topo da tela
      appBar: AppBar(
        backgroundColor: Colors.black,
        // esse é o título que aparece no meio da barra
        title: Text(
          "Pop Internacional",
          style: TextStyle(color: Colors.white),
        ),
        // esse botão fica no lado esquerdo da barra
        // quando clicar na seta, volta pra tela anterior
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      // aqui começa o corpo da tela
      // o SingleChildScrollView permite rolar a tela pra baixo
      body: SingleChildScrollView(
        // a Column organiza tudo um embaixo do outro
        child: Column(
          children: [

            // esse Container é o banner verde lá do topo
            // o double.infinity faz ele ocupar toda a largura da tela
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.green,
              // coloquei um ícone de nota musical no meio do banner
              child: Icon(
                Icons.music_note,
                color: Colors.white,
                size: 80,
              ),
            ),

            // aqui aparece o nome da playlist em branco e negrito
            Text(
              "Pop Internacional",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            // essa é a descrição da playlist, em cinza e menor
            Text(
              "Os melhores hits do pop internacional!",
              style: TextStyle(color: Colors.grey),
            ),

            // esse é o botão de play, um ícone verde grandão
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle,
                color: Colors.green,
                size: 64,
              ),
            ),

            // a Row coloca os ícones lado a lado
            // aqui ficam o botão de curtir e o de mais opções
            Row(
              children: [
                // botão de curtir a playlist
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border, color: Colors.grey),
                ),
                // botão de mais opções (os três pontinhos)
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert, color: Colors.grey),
                ),
              ],
            ),

            // aqui começa a lista de músicas
            // cada ListTile é uma música com ícone, nome e artista
            ListTile(
              leading: Icon(Icons.music_note, color: Colors.white),
              title: Text("Blinding Lights", style: TextStyle(color: Colors.white)),
              subtitle: Text("The Weeknd", style: TextStyle(color: Colors.grey)),
            ),
            ListTile(
              leading: Icon(Icons.music_note, color: Colors.white),
              title: Text("APT", style: TextStyle(color: Colors.white)),
              subtitle: Text("Rose e Bruno Mars", style: TextStyle(color: Colors.grey)),
            ),
            ListTile(
              leading: Icon(Icons.music_note, color: Colors.white),
              title: Text("Die With A Smile", style: TextStyle(color: Colors.white)),
              subtitle: Text("Lady Gaga e Bruno Mars", style: TextStyle(color: Colors.grey)),
            ),
            ListTile(
              leading: Icon(Icons.music_note, color: Colors.white),
              title: Text("Flowers", style: TextStyle(color: Colors.white)),
              subtitle: Text("Miley Cyrus", style: TextStyle(color: Colors.grey)),
            ),
            ListTile(
              leading: Icon(Icons.music_note, color: Colors.white),
              title: Text("Cruel Summer", style: TextStyle(color: Colors.white)),
              subtitle: Text("Taylor Swift", style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),

      // esse é o menu de navegação lá embaixo
      // o selectedItemColor é a cor do item que está selecionado
      // o unselectedItemColor é a cor dos outros itens
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music), label: "Sua Biblioteca"),
        ],
      ),
    );
  }
}