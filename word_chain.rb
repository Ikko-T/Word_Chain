class WordChain
  def initialize
    @count = 0
  end

  def game_start(instruction, user, shisa)
    instruction.greet
    country = Country.new
    loop do
      @count += 1
      shisa.action(@count, country)
      user.action(country)
    end
  end
end
