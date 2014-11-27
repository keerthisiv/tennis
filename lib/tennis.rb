class TennisGame

  def initialize(player1Name, player2Name)
    @player1Name = player1Name
    @player2Name = player2Name
    @p1points = 0
    @p2points = 0
  end
        
  def won_point(playerName)
    playerName == @player1Name ? @p1points += 1 : @p2points += 1
  end

  def points_diff
    @p1points - @p2points
  end

  def after_deuce
    case points_diff
    when 1 then "Advantage " + @player1Name
    when -1 then "Advantage " + @player2Name
    else "Win for " + winner 
    end
  end

  def winner
   points_diff >= 2 ? @player1Name : @player2Name
  end

  def score(points)
    case points
    when 0 then "Love"
    when 1 then "Fifteen"
    when 2 then "Thirty"
    when 3 then "Forty"
    end
  end

  def current_score
    "#{score(@p1points)}-#{score(@p2points)}" 
  end
  
  def say_score
    if @p1points == @p2points
      @p1points > 2 ? "Deuce" : "#{score(@p1points)}-All"
    elsif (@p1points>=4 or @p2points>=4)
      after_deuce
    else
     current_score 
    end
  end
end
