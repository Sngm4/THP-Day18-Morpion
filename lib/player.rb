class Player 
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
				
  end

  def position_symbol 
	puts "Choose a position"
	input = gets.chomp # demande à l'utilisateur où il veut se placer
		Board.all_array_board_case.each do |check_box| #check dans chaque case de l'array
			if check_box.case_id == input # si le case id de la case est identique à l'input de l'utilisateur alors ça modifie le case_id par le symbol du user
				if check_box.value == " " #et que la case est complété par un espace
					check_box.value = @symbol
				else
					puts "Try again this case is already occuped"
						position_symbol
				end
			end
		end
  end

end