class RPSGame

  VALID_PLAY_TYPES = [:rock, :paper, :scissors]

  WINNING_PAIRS = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

 attr_reader :item

  def initialize(type)
    @type = type
    raise PlayTypeError unless VALID_PLAY_TYPES.include?(@type)
  end

  def self.valid_play?(type)
    !!VALID_PLAY_TYPES.include?(type)
  end

  def computer_play
      VALID_PLAY_TYPES[rand(0..2)]
  end

  def won?
    !!(WINNING_PAIRS[@type] == computer_play)
  end

  def tied?
    !!(@type == computer_play)
  end

  def lost?
    !(won? || tied?)
  end

end

class PlayTypeError < StandardError
end
