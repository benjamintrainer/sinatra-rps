require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]

  @computer_move = moves.sample

  if @computer_move == "rock"
    @outcome = "tied"
  elsif @computer_move == "scissors"
    @outcome = "won"
  else
    @outcome = "lost"
  end
  erb(:rock)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]

  @computer_move = moves.sample

  if @computer_move == "paper"
    @outcome = "tied"
  elsif @computer_move == "rock"
    @outcome = "won"
  else
    @outcome = "lost"
  end
  erb(:paper)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]

  @computer_move = moves.sample

  if @computer_move == "scissors"
    @outcome = "tied"
  elsif @computer_move == "paper"
    @outcome = "won"
  else
    @outcome = "lost"
  end
  erb(:scissors)
end
