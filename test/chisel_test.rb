gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/chisel'

class ChiselTest < Minitest::Test

	def test_parses_markdown_file_to_html
    markdown_filename = File.expand_path("../fixtures/test.md", __FILE__)
    html_filename = File.expand_path("../fixtures/test.html", __FILE__)
    chisel = Chisel.new(markdown_filename)
    assert_equal File.read(html_filename), chisel.parse_markdown
	end

  # def test_writes_html_file_from_markdown

  # end
end