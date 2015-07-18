gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/paragraph'

class ParagraphTest < Minitest::Test


	def test_puts_paragraph_tags_on_one_word
		input = ParagraphTags.new("Hello")
		assert_equal "<p>\nHello\n</p>", input.render
	end

	def test_puts_paragraph_tags_on_two_words
		input = ParagraphTags.new("Hello World")
		assert_equal "<p>\nHello World\n</p>", input.render
	end

	def test_puts_paragraph_tags_on_a_sentence
		input = ParagraphTags.new("I am having a really good day!")
		assert_equal "<p>\nI am having a really good day!\n</p>", input.render
	end

	def test_puts_paragraph_tags_on_a_quotation
		input = ParagraphTags.new("'I am having a really good day!'")
		assert_equal "<p>\n'I am having a really good day!'\n</p>", input.render
	end 

end