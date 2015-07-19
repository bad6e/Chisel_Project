require_relative 'paragraph'
require_relative 'header'
require_relative 'unordered'
require_relative 'ordered'



class Chisel

	def initialize(filename)
    @filename = filename

  end

  def parse_markdown
    @result = []
    contents = File.read(@filename)
    parts = contents.split("\n\n")
    parts.each do |part|
      if part.start_with?("#")
        @result << Header.new(part).render
      elsif part.start_with?("* ")
        @result << UnorderTag.new(part).render
      elsif part.start_with?("1. ")
        @result << OrderTag.new(part).render
      elsif part.chars.include?('"')
        part.tr!('"', '\"')
       @result << ParagraphTags.new(part).render
      else
       @result << ParagraphTags.new(part).render
      end
    end
    @file = @result.join("\n\n")

    @to_file = "my_output.html"
    File.open(@to_file, "w") do |file|
      file.write(@file)
    end
    puts "Converted #{@filename} (#{File.readlines(@filename).size} lines) to #{@to_file} (#{File.readlines(@to_file).size} lines)"
  end
end

input = ARGV.first || "test.md"
Chisel.new(input).parse_markdown








