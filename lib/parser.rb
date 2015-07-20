require_relative 'paragraph'
require_relative 'header'
require_relative 'unordered'
require_relative 'ordered'


class Parser

	def initialize(filename)
    @filename = filename
    @file = nil
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
    @result.join("\n\n")
  end

  def file_writer
    file1 = File.open("my_output.html", 'w')
    file1.write(parse_markdown)
    file1.close
    puts "Converted #{@filename} (#{File.readlines(@filename).size} lines) to my_output.html (#{File.readlines(file1).size} lines)"
  end
end







