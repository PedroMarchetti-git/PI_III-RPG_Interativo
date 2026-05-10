class Character { // Modelo de personagem, representando cada NPC do jogo, com suas características e informações relevantes para a investigação.
  final String id; // Identificador único do personagem (ex: "professor_silva")
  final String name; // Nome do personagem (ex: "Professor Silva")
  final String description; // Descrição breve do personagem (ex: "Um professor de história aposentado, conhecido por seu temperamento reservado e amor por livros antigos.")
  final String occupation; // Profissão do personagem (ex: "Professor de História")
  final String alibi; // Alibi do personagem (ex: "Estava na biblioteca lendo livros.")
  final List<String> relationships; // Relacionamentos do personagem com outros NPCs (ex: ["aluno_martins", "colega_rodrigues"])
  final String motive; // Motivo do personagem (ex: "Desejo de proteger um segredo.")
  final bool isSuspect; // Indica se o personagem é um suspeito (ex: true/false)
  final String imagePath; // Caminho para a imagem do personagem (ex: "assets/images/professor_silva.png")
  bool hasBeenInterrogated; // Indica se o personagem já foi interrogado pelo jogador (ex: true/false)

  Character({ // Construtor para criar uma instância de Character, com todos os campos obrigatórios para garantir que o personagem seja bem definido.
    required this.id, // Identificador único do personagem (ex: "professor_silva")
    required this.name, // Nome do personagem (ex: "Professor Silva")
    required this.description, // Descrição breve do personagem (ex: "Um professor de história aposentado, conhecido por seu temperamento reservado e amor por livros antigos.")
    required this.occupation, // Profissão do personagem (ex: "Professor de História")
    required this.alibi, // Alibi do personagem (ex: "Estava na biblioteca lendo livros.")
    required this.relationships, // Relacionamentos do personagem com outros NPCs (ex: ["aluno_martins", "colega_rodrigues"])
    required this.motive, // Motivo do personagem (ex: "Desejo de proteger um segredo.")
    required this.isSuspect, // Indica se o personagem é um suspeito (ex: true/false)
    required this.imagePath, // Caminho para a imagem do personagem (ex: "assets/images/professor_silva.png")
    this.hasBeenInterrogated = false, // Por padrão, o personagem não foi interrogado (hasBeenInterrogated = false)
  });
}