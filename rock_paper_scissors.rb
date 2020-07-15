class Game
  def initialize(player)
    @player = player
    play_round
  end

  def play_round
    comp_selection = determine_comp_selection
    player_selection = determine_player_selection
    puts "Player selection: #{player_selection}"
    puts "Computer selection: #{comp_selection}"
  end

  def determine_player_selection
    puts 'Rock, paper or scissors. What do you select?'
    gets.chomp
  end

  def determine_comp_selection
    %w[Rock Paper Scissors][rand(0..2)]
  end
end

class Player
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

puts 'Please enter your name:'
player_name = gets.chomp
player = Player.new(player_name)
Game.new(player)
