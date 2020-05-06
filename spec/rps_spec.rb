require('rps')
require('rspec')


describe("RPS#wins?") do
  it("returns true if rock is the object and scissors is the argument") do
  game = RPS.new()
  expect(game.wins?("rock", "scissors")).to(eq(true))
  end

  it("returns true if scissors is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?("scissors", "paper")).to(eq(true))
  end

  it("returns true if paper is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins?("paper", "rock")).to(eq(true))
  end

  it("returns false if game object doesnt win") do
    game = RPS.new()
    expect(game.wins?("rock", "paper")).to(eq(false))
  end

end

describe("RPS#tie?") do
  it("returns true if object and argument are both equal") do
    game = RPS.new()
    expect(game.tie?("rock", "rock")).to(eq(true))
  end

  it("returns false if object and argument are different") do
    game = RPS.new()
    expect(game.tie?("rock", "paper")).to(eq(false))
  end
end

describe("RPS#add_to_score") do
  it("adds 1 to the computers score if .wins? returns true") do
    game = RPS.new()
    check_win = game.wins?("rock", "scissors")
    game.add_to_score(check_win)
    expect(game.npc_score).to(eq(1))

  end

  it("adds 1 to the players score if .wins? returns false") do
    game = RPS.new()
    check_win = game.wins?("paper", "scissors")
    game.add_to_score(check_win)
    expect(game.player_score).to(eq(1))
  end
end

describe("RPS") do
  it("correctly adds user choice input into RPS class as a property") do
    user_choice = "rock"
    game = RPS.new(user_choice)
    expect(game.player_choice).to(eq("rock"))
  end
end
