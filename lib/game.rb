class Game
  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    players.select { |player| player != the_player }.first
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  private
  attr_reader :players

  def losing_players
    players.select { |player| player.hit_points <= 0 }
  end
  
end
