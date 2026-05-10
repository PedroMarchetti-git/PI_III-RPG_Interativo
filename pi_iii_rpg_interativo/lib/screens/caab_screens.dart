import 'package:flutter/material.dart'; // Importa o pacote Flutter para construir a interface do usuário.
import 'package: provider/provider.dart'; // Importa o pacote Provider para gerenciamento de estado, permitindo que a tela acesse o estado do jogo.
import '../models/game_state.dart'; // Importa o modelo GameState, que contém o estado atual do jogo, como tokens obtidos, personagens interrogados, etc.
import '../widgets/choice_button.dart'; // Importa um widget personalizado para botões de escolha, que pode ser reutilizado em várias telas para manter a consistência visual.
import '../widgets/clue_card.dart'; // Importa um widget personalizado para exibir pistas, que pode ser reutilizado em várias telas para manter a consistência visual.
import 'biblioteca_screen.dart'; // Importa a tela da Biblioteca, permitindo que o jogador navegue para lá a partir do CAAB.

class CaabScreen extends // Tela do CAAB, onde o jogador pode interagir com estudantes, obter pistas e tokens relacionados ao conhecimento acadêmico.
StatefulWidget { // Usamos StatefulWidget porque o estado da tela (como pistas mostradas, personagens interrogados) pode mudar com as interações do jogador.
  @override // Sobrescreve o método createState para criar a instância do estado da tela.
  _CaabScreenState createState() => _CaabScreenState(); // Retorna uma nova instância do estado da tela, onde a lógica de interação e exibição será implementada.
}

class _CaabScreenState extends // Classe de estado para a tela do CAAB, onde a lógica de interação e exibição será implementada.
State<CaabScreen> { // Define o estado da tela do CAAB, incluindo variáveis para controlar o que está sendo mostrado (pistas, personagens, diálogos) e a lógica para atualizar a interface com base nas interações do jogador.
  bool showingClues = false; // Controla se as pistas estão sendo mostradas na tela.
  bool showingCharacters = false; // Controla se os personagens interrogados estão sendo mostrados na tela.
  String currentDialogue = ""; // Armazena o diálogo atual a ser exibido, que pode mudar com base nas interações do jogador.
  List<String> availableCurrentActions = []; // Lista de ações atuais disponíveis, que pode ser atualizada com base nas interações do jogador.
  bool hasSerchedBookshelf = false; // Controla se o jogador já procurou a estante de livros, para evitar mostrar a mesma pista repetidamente. 
  bool hasExaminedAtwork = false; // Controla se o jogador já examinou a obra de arte, para evitar mostrar a mesma pista repetidamente.
  bool hasCheckedComputers = false; // Controla se o jogador já verificou os computadores, para evitar mostrar a mesma pista repetidamente.

  @override // Sobrescreve o método build para construir a interface do usuário da tela do CAAB, exibindo opções de interação, pistas e personagens com base no estado atual do jogo.
  void initState() {// Sobrescreve o método initState para inicializar o estado da tela, como carregar dados iniciais ou configurar variáveis.
    super.initState(); // Inicializa o estado da tela, como carregar dados iniciais ou configurar variáveis.
    _initializeLocation(); // Chama um método para inicializar a localização do jogador, que pode ser usado para determinar se ele está dentro do ambiente do CAAB e desbloquear interações específicas.
  }

  void _initializeLocation() {
    final gameState = Provider.of<GameState>(context, listen: false);
    gameState.visitLocation ('caab'); // Marca a localização do CAAB como visitada no estado do jogo, o que pode desbloquear interações ou pistas específicas para essa localização.

    setState(() {// Atualiza o estado da tela para refletir as mudanças iniciais, como desbloquear interações ou pistas específicas para o CAAB.
      currentDialogue = 
    _getInitialDescription (); // Define o diálogo inicial a ser exibido quando o jogador entra no CAAB, fornecendo uma descrição do ambiente e possíveis interações.
      availableActions = // Atualiza a lista de ações disponíveis com base no estado atual do jogo, como quais interações já foram feitas e quais tokens o jogador possui.
    _getAvailableActions(); // Atualiza a lista de ações disponíveis com base no estado atual do jogo, como quais interações já foram feitas e quais tokens o jogador possui.
     });
   }
   
   String _getInitialDescription() { // Retorna a descrição inicial do ambiente do CAAB, que pode ser exibida quando o jogador entra pela primeira vez, fornecendo uma introdução ao ambiente e suas características.
     return "Você está no CAAB, o Centro de estudos Afro e Afro Brasileiros da PUC."
            "O ambiente é vibrante, com paredes coloridas e uma atmosfera de aprendizado e cultura. "
            "Estantes repletas de livros sobre história, cultura e arte afro-brasileira. "
            "Há muitos estudantes aqui, e você pode conversar com eles para obter informações." 
            "As luzes suaves e as mesas cheias de papéis bagunçados que se espalharam durante o apagão, sendo organizados pela comendadora responsável pelo CAAB. ";
   }

   List<String> _getAvailableActions(){ // Retorna uma lista de ações disponíveis para o jogador no ambiente do CAAB, com base no estado atual do jogo, como quais interações já foram feitas e quais tokens o jogador possui, permitindo que a interface exiba as opções corretas para o jogador.
    List<String> actions = []; // Lista de ações disponíveis, que será preenchida com base no estado atual do jogo, como quais interações já foram feitas e quais tokens o jogador possui.
    if (!hasSerchedBookshelf) { // Controla se o jogador já procurou a estante de livros, para evitar mostrar a mesma pista repetidamente. Se ainda não procurou, adiciona a ação de procurar na estante de livros à lista de ações disponíveis.
      actions.add("Procurar na estante de livros"); // Adiciona a ação de procurar na estante de livros à lista de ações disponíveis, permitindo que o jogador interaja com esse elemento do ambiente para obter pistas ou informações.
    }
    if (!hasExaminedAtwork) { // Controla se o jogador já examinou a obra de arte, para evitar mostrar a mesma pista repetidamente. Se ainda não examinou, adiciona a ação de examinar a obra de arte à lista de ações disponíveis.
      actions.add("Examinar a obra de arte");// Adiciona a ação de examinar a obra de arte à lista de ações disponíveis, permitindo que o jogador interaja com esse elemento do ambiente para obter pistas ou informações.
    }
    if (!hasCheckedComputers) {// Controla se o jogador já verificou os computadores, para evitar mostrar a mesma pista repetidamente. Se ainda não verificou, adiciona a ação de verificar os computadores à lista de ações disponíveis.
      actions.add("Verificar os computadores");// Adiciona a ação de verificar os computadores à lista de ações disponíveis, permitindo que o jogador interaja com esse elemento do ambiente para obter pistas ou informações.
    }

    actions.add("Conversar com a comendadora Edna");// Adiciona a ação de conversar com a comendadora Edna à lista de ações disponíveis, permitindo que o jogador interaja com esse personagem para obter pistas ou informações.
    actions.add("Procurar por pistas");// Adiciona a ação de procurar por pistas à lista de ações disponíveis, permitindo que o jogador interaja com o ambiente para encontrar pistas relacionadas ao caso.
    actions.add("Verificar Inventário");// Adiciona a ação de verificar o inventário à lista de ações disponíveis, permitindo que o jogador acesse seus tokens e pistas coletados para ajudar na investigação.

    final gameState = Provider.of<GameState>(context, listen: false);// Acessa o estado do jogo usando Provider, para verificar quais tokens o jogador possui e quais interações já foram feitas, permitindo que a lista de ações disponíveis seja atualizada com base no progresso do jogador.
    if (gameState.hasToken('token_biblioteca')) {// Verifica se o jogador possui o token da biblioteca, e se sim, adiciona a ação de ir para a biblioteca à lista de ações disponíveis, permitindo que o jogador navegue para essa tela se já tiver desbloqueado o acesso à biblioteca.
      actions.add("Ir para a Biblioteca");// Adiciona a ação de ir para a biblioteca à lista de ações disponíveis, permitindo que o jogador navegue para essa tela se já tiver desbloqueado o acesso à biblioteca.
    }
    return actions;// Retorna a lista de ações disponíveis, que será usada para exibir as opções corretas para o jogador na interface do CAAB, com base no estado atual do jogo e nas interações já feitas.
   }
};