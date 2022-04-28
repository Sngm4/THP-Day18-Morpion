class Board

  attr_accessor :array_board_case #la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  
	@@array_board_case #devient un élément de la classe

  def initialize #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
		@@array_board_case = [] #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
		@@array_board_case << @a1 = BoardCase.new(" ", "a1")   
		@@array_board_case << @a2 = BoardCase.new(" ", "a2")
		@@array_board_case << @a3 = BoardCase.new(" ", "a3")
		@@array_board_case << @b1 = BoardCase.new(" ", "b1")
		@@array_board_case << @b2 = BoardCase.new(" ", "b2")
		@@array_board_case << @b3 = BoardCase.new(" ", "b3")
		@@array_board_case << @c1 = BoardCase.new(" ", "c1")
		@@array_board_case << @c2 = BoardCase.new(" ", "c2")
		@@array_board_case << @c3 = BoardCase.new(" ", "c3") 
		@victory = false
				
  end
  
	def self.all_array_board_case
		@@array_board_case
	end

	def play_turn
	end
		
	def select_board_cases
	end

	def victory?
		# Test si victoire devient true
		if @a1 == "x" && @b1 == "x" && @c1 == "x" || @a1 == "o" && @b1 == "o" && @c1 == "o" # Test de la 1ère ligne
			@victory = true

		end

		if @a2 == "x" && @b2 == "x" && @c2 == "x" || @a2 == "o" && @b2 == "o" && @c2 == "o" # Test de la 2ème ligne
			@victory = true

		end

		if @a3 == "x" && @b3 == "x" && @c3 == "x" || @a3 == "o" && @b3 == "o" && @c3 == "o" # Test de la 3ème ligne
			@victory = true

		end

		if @a1 == "x" && @a2 == "x" && @a3 == "x" || @a1 == "o" && @a2 == "o" && @a3 == "o" # Test de la 1ère colonne
			@victory = true

		end

		if @b1 == "x" && @b2 == "x" && @b3 == "x" || @b1 == "o" && @b2 == "o" && @b3 == "o" # Test de la 2ème colonne
			@victory = true

		end

		if @c1 == "x" && @c2 == "x" && @c3 == "x" || @c1 == "o" && @c2 == "o" && @c3 == "o" # Test de la 3ème colonne
			@victory = true

		end

		if @a1 == "x" && @b2 == "x" && @c3 == "x" || @a1 == "o" && @b2 == "o" && @c3 == "o" # Test de la 1ère diagonale
			@victory = true

		end

		if @c3 == "x" && @b2 == "x" && @a3 == "x" || @c3 == "o" && @b2 == "o" && @a3 == "o" # Test de la seconde diagonale
			@victory = true

		end

	end

end

