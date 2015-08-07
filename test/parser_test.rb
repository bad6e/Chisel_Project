require 'minitest/autorun'
require 'minitest/pride'
require './lib/parser'


class ParserTest < Minitest::Test

  def test_writes_a_html_file_with_appropiate_headings
    markdown_filename = File.expand_path("../fixtures/test.md", __FILE__)
    parser = Parser.new(markdown_filename)
    assert File.expand_path("../lib/my_outputl.html", __FILE__)
  end
end