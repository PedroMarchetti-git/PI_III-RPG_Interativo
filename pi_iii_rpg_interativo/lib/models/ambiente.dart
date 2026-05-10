/// Representa um ambiente do RPG mapeado para uma localização real do campus.
///
/// Cada ambiente possui coordenadas (lat/long) e um raio de ativação em metros.
/// O jogador "entra" no ambiente quando sua posição está dentro desse raio.
class Ambiente { // Identificador único do ambiente (ex: "biblioteca")
  final String id; // Nome do ambiente (ex: "Biblioteca")
  final String nome; // Descrição breve do ambiente (ex: "Um local silencioso cheio de livros e conhecimento.")
  final String descricao; // Latitude do centro do ambiente (ex: -23.5505)
  final double latitude; // Longitude do centro do ambiente (ex: -46.6333)
  final double longitude; // Raio de ativação do ambiente em metros (ex: 50.0)
  final double raioMetros; // Indica se o ambiente já foi desbloqueado pelo jogador (ex: true/false)
  final bool desbloqueado; // Construtor para criar uma instância de Ambiente.

  const Ambiente({ // Todos os campos são obrigatórios para garantir que o ambiente seja bem definido.
    required this.id, // Identificador único do ambiente (ex: "biblioteca")
    required this.nome, // Nome do ambiente (ex: "Biblioteca")
    required this.descricao, // Descrição breve do ambiente (ex: "Um local silencioso cheio de livros e conhecimento.")
    required this.latitude, // Latitude do centro do ambiente (ex: -23.5505)
    required this.longitude, // Longitude do centro do ambiente (ex: -46.6333)
    required this.raioMetros, // Raio de ativação do ambiente em metros (ex: 50.0)
    this.desbloqueado = false, // Por padrão, o ambiente começa bloqueado (desbloqueado = false)
  });
}
