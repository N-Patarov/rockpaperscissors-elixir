defmodule Main do
  def main do
    IO.puts "******ROCK PAPER SCISSORS******"
    IO.puts "******   BY: N-Patarov   ******"
    Enum.map(1..3, fn x ->
      input=IO.gets("Choose rock, paper or scissors: ")
      player=String.trim(input)
      rps=["rock","paper","scissors"]
      pc=Enum.take_random(rps, 1)
      IO.puts"Computer: #{pc}"
      IO.puts "Player: #{player}"
      cond do
        player == "rock" && pc == ["rock"] -> IO.puts "DRAW"
        player == "rock" && pc == ["paper"] ->IO.puts "YOU LOSE"
        player == "rock" && pc == ["scissors"]->IO.puts "YOU WIN"
        player == "paper" && pc == ["paper"] -> IO.puts "DRAW"
        player == "paper" && pc == ["rock"] -> IO.puts "YOU WIN"
        player == "paper" && pc == ["scissors"] -> IO.puts "YOU LOSE"
        player == "scissors" && pc == ["scissors"] -> IO.puts "DRAW"
        player == "scissors" && pc == ["rock"] -> IO.puts "YOU LOSE"
        player == "scissors" && pc == ["paper"] -> IO.puts "YOU WIN"
        True -> IO.puts "Error: You can only choose rock, paper or scissors!"
      end
    end
    )
  end
end
Main.main
