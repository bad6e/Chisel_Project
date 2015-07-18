gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/chisel'

class ChiselTest < Minitest::Test


	def test_render
    markdown_filename = File.expand_path("../fixtures/test.md", __FILE__)
    html_filename = File.expand_path("../fixtures/test.html", __FILE__)
    chisel = Chisel.new(markdown_filename)
    assert_equal chisel.to_s, File.read(html_filename)
	end
end