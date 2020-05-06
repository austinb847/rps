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