gem 'minitest', '>= 5.7.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/header'

class HeaderTest < Minitest::Test

  def test_counts_number_of_hashtags
    input = Header.new("## I Love Hashtags")
    assert_equal 2, input.count
  end

  def test_displays_the_header_correctly
    input = Header.new("## I Love Hashtags")
    assert_equal "<h2>I Love Hashtags</h2>", input.render
  end
end