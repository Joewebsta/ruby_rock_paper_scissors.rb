class Game
  def initialize
    @player = []
  end

  def add_player(player)
    @player = player
    intro_message
  end

  def intro_message
    puts "A new game has been created. Welcome #{@player.name}!"
    get_player_selection
  end

  def get_player_selection
    puts 'Rock, paper or scissors. What do you select?'
    selection = gets.chomp
    play_round(selection)
  end

  def get_comp_selection
    %w[Rock Paper Scissors][rand(0..2)]
  end

  def play_round(selection)
    comp_selection = get_comp_selection
    player_selection = selection
    puts "Player selection: #{player_selection}"
    puts "Computer selection: #{comp_selection}"
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
game = Game.new
game.add_player(player)
