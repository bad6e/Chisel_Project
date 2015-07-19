gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/ordered'

class OrderedTagTest < Minitest::Test

  def test_puts_ol_and_li_tags_around_one_word
    input = OrderTag.new("1. Sushi")
    assert_equal "<ol>\n\t<li>Sushi</li>\n</ol>", input.render
  end

  def test_puts_ol_and_li_tags_around_two_words
    input = OrderTag.new("1. Sushi\n2. Mexican")
    assert_equal "<ol>\n\t<li>Sushi</li>\n\t<li>Mexican</li>\n</ol>", input.render
  end
end

