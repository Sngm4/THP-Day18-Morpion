require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'board'
require 'board_case'
require 'game'
require 'show'

class Application
    def perform
        # puts @array_board_case
        # puts "Welcome to the game"
        # gets
        # puts "Player 1 choose your name"
        # print "> "
        # gets.chomp
        # puts "Welcome #{player1.name} you will play with \"x\""
        # gets
        # puts "Player 2 choose your name"
        # print "> "
        # player2.name = gets.chomp
        # puts "Welcome #{player2.name} you will play with \"o\""
        # gets
        # puts "It's a game between #{player1.name} and #{player2.name} !"
        # gets
        # puts

        puts "Welcome to the game"
        game1 = Game.new

        puts "Player 1 choose your name"
        print "> "
        name1 = gets.chomp
        puts "Player 2 choose your name"
        print "> "
        name2 = gets.chomp
        game1.create_players(name1,name2)
        game1.turn
        puts show_board

        # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    end
  
  end
  


Application.new.perform