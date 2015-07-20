require './parser'

input = ARGV.first || "test.md"
Parser.new(input).file_writer