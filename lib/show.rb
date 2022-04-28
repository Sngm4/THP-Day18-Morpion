class Show

  def initialize
  end

  def show_board
    #affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    print "#{Board.all_array_board_case[0].value} | #{Board.all_array_board_case[1].value} | #{Board.all_array_board_case[2].value}\n"
    puts '-'*13
    print "#{Board.all_array_board_case[3].value} | #{Board.all_array_board_case[4].value} | #{Board.all_array_board_case[5].value}\n"
    puts '-'*13
    print "#{Board.all_array_board_case[6].value} | #{Board.all_array_board_case[7].value} | #{Board.all_array_board_case[8].value}\n"


    #Show.new.show_board(@board)

  end

end
