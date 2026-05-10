class GameToken {
  final String id; // Identificador único do token (ex: "token_biblioteca")
  final String name; // Nome do token (ex: "Token da Biblioteca")
  final String obtainedFrom; // Descrição de onde o token foi obtido (ex: "Encontrado na praça de alimentação")
  final String unlocks; // Descrição do que o token desbloqueia (ex: "Permite acessar a biblioteca")
  final String imagePath; // Caminho para a imagem do token (ex: "assets/images/token_biblioteca.png")
  final String description; // Descrição detalhada do token (ex: "Este token representa o conhecimento adquirido na biblioteca. Com ele, você pode acessar áreas restritas e obter dicas valiosas.")
  bool isObtained; // Indica se o jogador já obteve este token

  GameToken({ // Construtor para criar uma instância de GameToken, com todos os campos obrigatórios para garantir que o token seja bem definido.
    required this.id, // Identificador único do token (ex: "token_biblioteca")
    required this.name, // Nome do token (ex: "Token da Biblioteca")
    required this.obtainedFrom, // Descrição de onde o token foi obtido (ex: "Encontrado na praça de alimentação")
    required this.unlocks, // Descrição do que o token desbloqueia (ex: "Permite acessar a biblioteca")
    required this.imagePath, // Caminho para a imagem do token (ex: "assets/images/token_biblioteca.png")
    required this.description, // Descrição detalhada do token (ex: "Este token representa o conhecimento adquirido na biblioteca. Com ele, você pode acessar áreas restritas e obter dicas valiosas.")
    this.isObtained = false, // Por padrão, o token começa como não obtido (isObtained = false)
  });
}
