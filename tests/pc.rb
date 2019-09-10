require "minitest/autorun"

require_relative "../pokemon"

class PC < Minitest::Test
  def setup
    @pokemon = Pokemon.new
  end

  def test_that_pokemon_can_speak
    assert_equal "Pokemons don't speak...", @pokemon.speak
  end
end
