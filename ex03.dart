import 'dart:math' as math;

void main() {
  final biblioteca = Biblioteca();
  biblioteca.mostraMusicas();
  biblioteca.transformaEmHoras(biblioteca.somaSegundos());
}

class Musica {
  Musica(this.nomeMusica,this.nomeArtista,this.nomeAlbum, this.duracaoSeg);
  
  final String nomeMusica;
  final String nomeArtista;
  final String nomeAlbum;
  final int duracaoSeg;
}


class Biblioteca {
  final _bibliotecaMusicas = <Musica> [
    Musica("Jesus Chorou", "Racionais MC", "Nada como um Dia após o Outro Dia", 472),
    Musica("No Brooklin", "Sabotage", "Rap É Compromisso", 348),
    Musica("Como Eu Te ", "Sabotage", "Rap É Compromisso", 348),
  ];
  
  void mostraMusicas(){
    for (var i = 0; i < _bibliotecaMusicas.length; i++) {
      print("Musica: ${_bibliotecaMusicas[i].nomeMusica},\nArtista: ${_bibliotecaMusicas[i].nomeArtista},\nAlbum: ${_bibliotecaMusicas[i].nomeAlbum},\nDuração (segundos): ${_bibliotecaMusicas[i].duracaoSeg}");
      print("-----------------------------------------------");
    }
  }
  
  int somaSegundos() {
    int totalDeSegundos = 0;
    
    for (var i = 0; i < _bibliotecaMusicas.length; i++) {
      totalDeSegundos += _bibliotecaMusicas[i].duracaoSeg;
    }
    return totalDeSegundos;
  }
  
  void transformaEmHoras(int segundos) {
    int p1 = segundos % 60;
    int p2 = segundos ~/ 60;
    int p3 = p2 % 60;
    p2 = p2 ~/ 60;
 
    print("Duração total da biblioteca: $p2:$p3:$p1");
  }
}
