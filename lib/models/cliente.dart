class Cliente {
  String nome;
  int idade;
  String materia;
  String escola;
  String telefone;

  // Construtor
  Cliente(
      {required this.nome,
      required this.idade,
      required this.materia,
      required this.escola,
      required this.telefone});

  // Métodos adicionais (opcionais)
  String getInfo() {
    return 'Nome: $nome, Idade: $idade, Materia: $materia, Cidade: $escola, Telefone: $telefone';
  }

  static List<Cliente> listaDeClientes = [
    Cliente(
        nome: "Alice",
        idade: 30,
        materia: "Biologia",
        escola: "CETEC",
        telefone: "111-111"),
    Cliente(
        nome: "Bob",
        idade: 40,
        materia: "História",
        escola: "ETECS",
        telefone: "222-222"),
    // outros clientes
  ];
}
