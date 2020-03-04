class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  
  def play
    take_turn until game_over == true
    game_over_message
    reset_game if @game_over == true
  end

  def take_turn
    require_sequence
    show_sequence
    if game_over == false
      round_success_message
      @sequence_length += 1
    end

  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence

  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @game_over = false
    @seq = []
    @sequence_length = 1
  end
end
