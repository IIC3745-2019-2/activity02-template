class Simulation
  def initialize(challenger, challenged)
    @challenger = challenger
    @challenged = challenged
    @pokemons = [@challenger, @challenged]
    @turn = nil
  end

  def prepare_turns
    @turn = @challenger.faster_than?(@challenged)
  end

  def current_roles
    return @pokemons if @turn

    @pokemons.reverse
  end

  def run
    prepare_turns

    while @pokemons.all?(&:alive?)
      attacker, defender = current_roles
      damage = attacker.attack(defender)
      puts "#{attacker} hits #{defender} for #{damage}"
      defender.current_hp -= damage

      @turn = !@turn
      puts "#{attacker} has #{attacker.current_hp} left, and #{defender} has #{defender.current_hp} left"
    end

    # retornamos al ganador
    @challenger.alive? ? @challenger : @challenged
  end
end
