import 'dart:math';

void main() {
   final pessoa = Pessoa();
   final randomFornecedor = Random();
   final fornecedor;
  
  if (randomFornecedor.nextInt(2) == 1) {
    fornecedor = FornecedorDeBebidas();
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoBebidas(fornecedor);
   }
  } else if (randomFornecedor.nextInt(2) == 2) {
    fornecedor = FornecedorDeSanduiches();
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoSanduiches(fornecedor);
   }
  }

   pessoa.informacoes();
}

class Produto {
   Produto(this.nome, this.calorias);

   /// Nome deste produto
   final String nome;

   /// Total de calorias
   final int calorias;
}

class FornecedorDeBebidas {
   final _random = Random();
   final _bebidasDisponiveis = <Produto>[
      Produto('Agua', 0),
      Produto('Refrigerante', 200),
      Produto('Suco de fruta', 100),
      Produto('Energetico', 135),
      Produto('Café', 60),
      Produto('Cha', 35),
   ];

   /// Retorna um produto que pode ser consumido por um consumidor
   Produto fornecer() {
      return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
   }
}

class FornecedorDeSanduiches {
  final _random = Random();
   final _sanduichesDisponiveis = <Produto>[
      Produto('Sanduiche de presunto', 250),
      Produto('Sanduiche integral', 100),
      Produto('Sanduiche de mostarda', 150),
      Produto('Sanduiche de carne', 300),
      Produto('Sanduiche de peito de peru', 250),
      Produto('Sanduiche de mortadela', 200)
   ];

   /// Retorna um produto que pode ser consumido por um consumidor
   Produto fornecerSanduiches() {
      return _sanduichesDisponiveis[_random.nextInt(_sanduichesDisponiveis.length)];
   }
}

class Pessoa {
   // Acumulador de calorias
   int _caloriasConsumidas = 0;

   /// Imprime as informações desse consumidor
   void informacoes() {
      print('Calorias consumidas: $_caloriasConsumidas');
   }

   /// Consome um produto e aumenta o numero de calorias
   void refeicaoBebidas(FornecedorDeBebidas fornecedor) {
      final produto01 = fornecedor.fornecer();
      print('Consumindo ${produto01.nome} (${produto01.calorias} calorias)');

      _caloriasConsumidas += produto01.calorias;
   }
  
  void refeicaoSanduiches(FornecedorDeSanduiches fornecedor) {
      final produto02 = fornecedor.fornecerSanduiches();
      print('Consumindo ${produto02.nome} (${produto02.calorias} calorias)');

      _caloriasConsumidas += produto02.calorias;
   }
}
