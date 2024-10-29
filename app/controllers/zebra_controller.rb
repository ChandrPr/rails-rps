class ZebraController < ApplicationController

  def root
    render({ :template => "game_templates/root" })
  end

  def rockpaperscissors
    rps = { "rock" => 1, "paper" => 2, "scissors" => 3 }
    @our_move = params['our_move']
    our_move_int = rps[@our_move]
    @their_move = rps.keys.sample
    their_move_int = rps[@their_move]

    case (their_move_int - our_move_int) % 3
    when 0
      @outcome = "We tied!"
    when 1 #or -2
      @outcome = "We lost!"
    when 2 #or -1
      @outcome = "We won!"
    end
    render({ :template => "game_templates/play_rps" })
  end

end
