gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/parser'

class ParserTest < Minitest::Test

	def test_parses_markdown_file_to_html
    markdown_filename = File.expand_path("../fixtures/test.md", __FILE__)
    html_filename = File.expand_path("../fixtures/test.html", __FILE__)
    html_filename1 = File.expand_path("../lib/my_output.html")
    parser = Parser.new(markdown_filename)
    assert_equal File.read(html_filename), File.read(html_filename1)
	end
end