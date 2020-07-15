class Game
  def initialize
    @player = []
  end

  def add_player(player)
    @player = player
  end

  def intro_message
    puts "A new game has been created. Welcome #{@player.name}!"
  end
end

class Player
  attr_accessor :name, :game

  def initialize(name)
    self.name = name
  end
end

puts 'Please enter your name:'
player_name = gets.chomp
player = Player.new(player_name)
p player

puts

game = Game.new
game.add_player(player)
p game

puts

game.intro_message
