require_relative 'test_helper'
require './lib/anagram_checker'

class AnagramCheckerTest < Minitest::Test

  def test_it_returns_boolean_for_anagram
    array1 = ['hello', 'test', 'sells', 'sails']
    array2 = ['hola', 'eta', 'less', 'slais']
    result = @anagram_checker.anagrams(array1, array2)
    assert_equal(result, [0,0,0,1])
  end

  def setup
    @anagram_checker = AnagramChecker.new
  end

end