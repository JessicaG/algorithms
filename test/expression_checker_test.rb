require_relative 'test_helper'
require './lib/expression_checker'

class ExpressionCheckerTest < Minitest::Test

  def test_it_returns_false_for_unbalanced_expressions
    unbalanced = ")([]{}"
    result = @expression_checker.balanced?(unbalanced)
    assert_equal(result, false)
  end

  def test_it_returns_true_for_a_balanced_array
    balanced = "[]"
    result = @expression_checker.balanced?(balanced)
    assert_equal(result, true)
  end

  def test_it_returns_true_for_a_balanced_hash
    balanced = "{}"
    result = @expression_checker.balanced?(balanced)
    assert_equal(result, true)
  end

  def test_it_returns_true_for_a_nested_balanced_array
    balanced = "[()]"
    result = @expression_checker.balanced?(balanced)
    assert_equal(result, true)
  end

  def test_it_returns_true_for_a_two_dimensional_balanced_array
    balanced = "[[]]"
    result = @expression_checker.balanced?(balanced)
    assert_equal(result, true)
  end

  def test_it_returns_false_for_unbalanced_hash
    unbalanced = "}{"
    result = @expression_checker.balanced?(unbalanced)
    assert_equal(result, false)
  end

  def setup
    @expression_checker = ExpressionChecker.new
  end

end