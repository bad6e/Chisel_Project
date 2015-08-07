require 'minitest/autorun'
require 'minitest/pride'
require './lib/strongtag'

class StrongTagTest < Minitest::Test

  def test_puts_strong_tags_around_one_word
    input = StrongTag.new("<p>\nI **Love** Hashtags\n</p>")
    assert_equal "<p>\nI <strong>Love</strong> Hashtags\n</p>", input.render
  end

  def test_puts_strong_tags_around_two_words_together
    input = StrongTag.new("<p>\nI **Love Hashtags**\n</p>")
    assert_equal "<p>\nI <strong>Love Hashtags</strong>\n</p>", input.render
  end

  def test_puts_strong_tags_around_two_words_separate
    input = StrongTag.new("<p>\nI **Love** Big **Hashtags**\n</p>")
    assert_equal "<p>\nI <strong>Love</strong> Big <strong>Hashtags</strong>\n</p>", input.render
  end
end

























