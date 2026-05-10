class Location { // Modelo de dados para representar uma localização no jogo.
  final String id;// Identificador único da localização, usado para referenciar a localização no código e no estado do jogo.
  final String name;// Nome da localização, que pode ser exibido para o jogador na interface do usuário.
  final String description;// Descrição detalhada da localização, que pode ser exibida para o jogador quando ele visita a localização ou interage com ela, fornecendo informações sobre o ambiente e possíveis interações.
  final List<String> availableClues; // Lista de IDs de pistas associadas a esta localização.
  final List<String> characters; // Lista de IDs de personagens associados a esta localização.
  final String? requiredToken; // Token necessário para acessar a localização, se aplicável.
  bool isUnlocked; // Indica se a localização está desbloqueada para o jogador.
  bool hasBeenVisited; // Indica se o jogador já visitou esta localização.


  Location({// Construtor para criar uma nova instância de Location, exigindo os campos obrigatórios e permitindo definir o estado inicial de desbloqueio e visitação.
    required this.id,// Identificador único da localização, usado para referenciar a localização no código e no estado do jogo.
    required this.name,// Nome da localização, que pode ser exibido para o jogador na interface do usuário.
    required this.description,// Descrição detalhada da localização, que pode ser exibida para o jogador quando ele visita a localização ou interage com ela, fornecendo informações sobre o ambiente e possíveis interações.
    required this.availableClues,// Lista de IDs de pistas associadas a esta localização, permitindo que o jogo saiba quais pistas podem ser encontradas ou obtidas nesta localização.
    required this.characters,// Lista de IDs de personagens associados a esta localização, permitindo que o jogo saiba quais personagens podem ser encontrados ou interagidos nesta localização.
    this.requiredToken,// Token necessário para acessar a localização, se aplicável, permitindo que o jogo restrinja o acesso a esta localização até que o jogador obtenha o token necessário.
    this.isUnlocked = false,// Indica se a localização está desbloqueada para o jogador, permitindo que o jogo controle quando o jogador pode acessar esta localização com base em seu progresso e tokens obtidos.
    this.hasBeenVisited = false,// Indica se o jogador já visitou esta localização, permitindo que o jogo controle eventos ou interações que só devem ocorrer na primeira visita do jogador a esta localização.
  });
}
