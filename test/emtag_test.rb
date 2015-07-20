gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/emtag'

class EmTagTest < Minitest::Test

	def test_puts_em_tags_around_one_word
		input = EmTag.new("<p>\nI *Love* Hashtags\n</p>")
		assert_equal "<p>\nI <em>Love</em> Hashtags\n</p>", input.render
	end

	def test_puts_em_tags_around_two_words_together
		input = EmTag.new("<p>\nI *Love Hashtags*\n</p>")
		assert_equal "<p>\nI <em>Love Hashtags</em>\n</p>", input.render
	end

	def test_puts_em_tags_around_two_words_separate
		input = EmTag.new("<p>\nI *Love* Big *Hashtags*\n</p>")
		assert_equal "<p>\nI <em>Love</em> Big <em>Hashtags</em>\n</p>", input.render
	end
end
