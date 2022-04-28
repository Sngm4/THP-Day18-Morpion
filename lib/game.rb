class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :array_player

  def initialize
    # créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    #@player2 = Player.new("#{name}", "o")
    @board = Board.new
    @display_board = Show.new
    @display_board.show_board
    


    #@array_player = [player1, player2]
    #@status = ??
    #@current_player = player1
  end

  def create_players(name1, name2)
    @player1 = Player.new("#{name1}", "x")
    @player2 = Player.new("#{name2}", "o")
    puts "Welcome #{@player1.name}"
    puts '_'*10
    puts "Welcome #{@player2.name}"

  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    system "clear"
    @player1.position_symbol
    @display_board.show_board

  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  # def game_end #permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul

  #   if @victory = true
  #     puts "You win"
  #   else
  #     puts "You loose"
  #   end
  # end    

end