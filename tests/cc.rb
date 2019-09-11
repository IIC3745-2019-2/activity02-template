require "minitest/autorun"

require_relative "../pokemon"

class CC < Minitest::Test
  def setup
    @pokemon = Pokemon.new('Charmander', 'Fire', 100, 6, 6, 10)
  end

  def test_that_pokemon_is_alive
    assert @pokemon.alive?
  end
end
