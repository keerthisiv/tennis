require 'rspec'
#require 'approvals/rspec'

require_relative '../lib/tennis'

describe "Battle of the Sexes" do

  context "partial or full game" do
    it "knows how to say the score" do
      scoring_tests.each do |testcase|
        (p1_name, p2_name, p1_points, p2_points, expected_score) = testcase
        game = TennisGame.new(p1_name, p2_name)
        simulate_rally(game, p1_name, p2_name, p1_points, p2_points)
        expect(game.say_score).to eq(expected_score)
      end
    end
  end

private

  def simulate_rally(game, p1_name, p2_name, p1_final_score, p2_final_score)
    (0..[p1_final_score, p2_final_score].max).each do |this_point|
      if this_point < p1_final_score
        game.won_point(p1_name)
      end
      if this_point < p2_final_score
        game.won_point(p2_name)
      end
    end
    game
  end

  def scoring_tests
    [
      ['Riggs', 'King', 0, 0, "Love-All"],
      ['Riggs', 'King', 1, 1, "Fifteen-All"],
      ['Riggs', 'King', 2, 2, "Thirty-All"],
      ['Riggs', 'King', 3, 3, "Deuce"],
      ['Riggs', 'King', 4, 4, "Deuce"],

      ['Riggs', 'King', 1, 0, "Fifteen-Love"],
      ['Riggs', 'King', 0, 1, "Love-Fifteen"],
      ['Riggs', 'King', 2, 0, "Thirty-Love"],
      ['Riggs', 'King', 0, 2, "Love-Thirty"],
      ['Riggs', 'King', 3, 0, "Forty-Love"],
      ['Riggs', 'King', 0, 3, "Love-Forty"],
      ['Riggs', 'King', 4, 0, "Win for Riggs"],
      ['Riggs', 'King', 0, 4, "Win for King"],

      ['Riggs', 'King', 2, 1, "Thirty-Fifteen"],
      ['Riggs', 'King', 1, 2, "Fifteen-Thirty"],
      ['Riggs', 'King', 3, 1, "Forty-Fifteen"],
      ['Riggs', 'King', 1, 3, "Fifteen-Forty"],
      ['Riggs', 'King', 4, 1, "Win for Riggs"],
      ['Riggs', 'King', 1, 4, "Win for King"],

      ['Riggs', 'King', 3, 2, "Forty-Thirty"],
      ['Riggs', 'King', 2, 3, "Thirty-Forty"],
      ['Riggs', 'King', 4, 2, "Win for Riggs"],
      ['Riggs', 'King', 2, 4, "Win for King"],

      ['Riggs', 'King', 4, 3, "Advantage Riggs"],
      ['Riggs', 'King', 3, 4, "Advantage King"],
      ['Riggs', 'King', 5, 4, "Advantage Riggs"],
      ['Riggs', 'King', 4, 5, "Advantage King"],
      ['Riggs', 'King', 15, 14, "Advantage Riggs"],
      ['Riggs', 'King', 14, 15, "Advantage King"],

      ['Riggs', 'King', 6, 4, 'Win for Riggs'], 
      ['Riggs', 'King', 4, 6, 'Win for King'], 
      ['Riggs', 'King', 16, 14, 'Win for Riggs'], 
      ['Riggs', 'King', 14, 16, 'Win for King'], 

      ['Court', 'King', 6, 4, 'Win for Court'],
      ['Riggs', 'Court', 4, 6, 'Win for Court'], 
      ['Court', 'King', 6, 5, 'Advantage Court'],
      ['Riggs', 'Court', 5, 6, 'Advantage Court'] 
    ]
  end

end
