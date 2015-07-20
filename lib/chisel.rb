require_relative 'parser'

input = ARGV.first || "test.md"
Parser.new(input).parse_markdown