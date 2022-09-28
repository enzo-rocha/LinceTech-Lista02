import 'dart:math';

void main() {
   final pessoa = Pessoa();
   final randomFornecedor = Random().nextInt(6);
   final fornecedorBebidas = FornecedorDeBebidas();
   final fornecedorSanduiches = FornecedorDeSanduiches();
   final fornecedorBolos = FornecedorDeBolos();
   final fornecedorSaladas = FornecedorDeSaladas();
   final fornecedorPetiscos = FornecedorDePetiscos();
   final fornecedorUltras = FornecedorDeUltras();
  
  if (randomFornecedor == 0) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoBebidas(fornecedorBebidas);
    }
  } else if (randomFornecedor == 1) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoSanduiches(fornecedorSanduiches);
    }
  } else if (randomFornecedor == 2) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoBolos(fornecedorBolos);
    }
  } else if (randomFornecedor == 3) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoSaladas(fornecedorSaladas);
    }
  } else if (randomFornecedor == 4) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoPetiscos(fornecedorPetiscos);
    }
  } else if (randomFornecedor == 5) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoUltras(fornecedorUltras);
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
      Produto('Cha', 35)
   ];

   /// Retorna um produto que pode ser consumido por um consumidor
   Produto fornecerBebidas() {
      return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
   }
}

class FornecedorDeSanduiches {
  final _random = Random();
   final _sanduichesDisponiveis = <Produto>[
      Produto('Sanduiche de presunto', 200),
      Produto('Sanduiche integral', 100),
      Produto('Sanduiche de mostarda', 130),
      Produto('Sanduiche de carne', 200),
      Produto('Sanduiche de peito de peru', 180),
      Produto('Sanduiche de mortadela', 200)
   ];

   /// Retorna um produto que pode ser consumido por um consumidor
   Produto fornecerSanduiches() {
      return _sanduichesDisponiveis[_random.nextInt(_sanduichesDisponiveis.length)];
   }
}

class FornecedorDeBolos {
  final _random = Random();
   final _bolosDisponiveis = <Produto>[
      Produto('Bolo de morango', 130),
      Produto('Bolo de chocolate', 230),
      Produto('Bolo de nozes', 100),
      Produto('Bolo de Nutella', 140),
      Produto('Bolo de cenoura', 340),
      Produto('Bolo de fubá', 100)
   ];

   /// Retorna um produto que pode ser consumido por um consumidor
   Produto fornecerBolos() {
      return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
   }
}

class FornecedorDeSaladas {
  final _random = Random();
   final _saladasDisponiveis = <Produto>[
      Produto('Salada de alface', 14),
      Produto('Salada de tomate', 40),
      Produto('Salada de agrião', 30),
      Produto('Salada de batata', 80),
      Produto('Salada de cebola', 35),
      Produto('Salada de abóbora', 40)
   ];

   /// Retorna um produto que pode ser consumido por um consumidor
   Produto fornecerSaladas() {
      return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
   }
}

class FornecedorDePetiscos {
  final _random = Random();
   final _petiscosDisponiveis = <Produto>[
      Produto('Amendoim', 100),
      Produto('Castanha', 80),
      Produto('Pipoca', 40),
      Produto('Peixe frito', 100),
      Produto('Ovo de codorna', 80),
      Produto('Azeitona', 40)
   ];

   /// Retorna um produto que pode ser consumido por um consumidor
   Produto fornecerPetiscos() {
      return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
   }
}

class FornecedorDeUltras {
  final _random = Random();
   final _ultrasDisponiveis = <Produto>[
      Produto('Bacon', 150),
      Produto('Chocolate', 150),
      Produto('Hamburguer', 250),
      Produto('Batata frita', 150),
      Produto('Pizza', 400),
      Produto('Pastel', 250)
   ];

   /// Retorna um produto que pode ser consumido por um consumidor
   Produto fornecerUltras() {
      return _ultrasDisponiveis[_random.nextInt(_ultrasDisponiveis.length)];
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
   void refeicaoBebidas(FornecedorDeBebidas fornecedorBebidas) {
      final produto = fornecedorBebidas.fornecerBebidas();
      print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

      _caloriasConsumidas += produto.calorias;
   }
  
  void refeicaoSanduiches(FornecedorDeSanduiches fornecedorSanduiches) {
      final produto = fornecedorSanduiches.fornecerSanduiches();
      print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

      _caloriasConsumidas += produto.calorias;
   }
  
  void refeicaoBolos(FornecedorDeBolos fornecedorBolos) {
      final produto = fornecedorBolos.fornecerBolos();
      print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

      _caloriasConsumidas += produto.calorias;
   }
  
  void refeicaoSaladas(FornecedorDeSaladas fornecedorSaladas) {
      final produto = fornecedorSaladas.fornecerSaladas();
      print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

      _caloriasConsumidas += produto.calorias;
   }
  
  void refeicaoPetiscos(FornecedorDePetiscos fornecedorPetiscos) {
      final produto = fornecedorPetiscos.fornecerPetiscos();
      print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

      _caloriasConsumidas += produto.calorias;
   }
  
  void refeicaoUltras(FornecedorDeUltras fornecedorUltras) {
      final produto = fornecedorUltras.fornecerUltras();
      print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

      _caloriasConsumidas += produto.calorias;
   }
}
