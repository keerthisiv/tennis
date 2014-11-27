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

  def equal_scores
    case @p1points 
    when 0 then "Love-All"
    when 1 then "Fifteen-All"
    when 2 then "Thirty-All"
    else "Deuce"
    end
  end

  def after_deuce
    case @p1points - @p2points
    when 1 then "Advantage " + @player1Name
    when -1 then "Advantage " + @player2Name
    else who_won
    end
  end

  def who_won
    if @p1points - @p2points >= 2 
      "Win for " + @player1Name
    else
      "Win for " + @player2Name
    end
  end
  
  def say_score
    result = ""
    tempScore=0
    if (@p1points==@p2points)
      result = equal_scores
    elsif (@p1points>=4 or @p2points>=4)
      result = after_deuce
    else
      (1...3).each do |i|
        if (i==1)
          tempScore = @p1points
        else
          result+="-"
          tempScore = @p2points
        end
        result += {
            0 => "Love",
            1 => "Fifteen",
            2 => "Thirty",
            3 => "Forty",
        }[tempScore]
      end
    end
    result
  end
end
