require 'minitest/autorun'
require 'minitest/pride'
require './lib/unordered'


class UnorderedTagTest < Minitest::Test

  def test_puts_ul_and_li_tags_around_one_word
    input = UnorderTag.new("* Sushi")
    assert_equal "<ul>\n\t<li>Sushi</li>\n</ul>", input.render
  end

  def test_puts_ul_and_li_tags_around_two_words
    input = UnorderTag.new("* Sushi\n* Mexican")
    assert_equal "<ul>\n\t<li>Sushi</li>\n\t<li>Mexican</li>\n</ul>", input.render
  end

  def test_puts_ul_and_li_tags_around_two_words
    input = UnorderTag.new("* Sushi\n* *Mexican*")
    assert_equal "<ul>\n\t<li>Sushi</li>\n\t<li>*Mexican*</li>\n</ul>", input.render
  end

  def test_puts_ul_and_li_tags_around_two_words
    input = UnorderTag.new("* Sushi\n* *Mexican*")
    assert_equal "<ul>\n\t<li>Sushi</li>\n\t<li>*Mexican*</li>\n</ul>", input.render
  end
end

