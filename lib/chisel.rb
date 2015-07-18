

require_relative 'paragraph'
require_relative 'header'


class Chisel

	def initialize(filename)
    @filename = filename
  end 

  def to_s
    contents = File.read(@filename)
    parts = contents.split("\n\n")
    result = []
    parts.each do |part|
      if part.start_with?("#")
        result << Header.new(part).render
      else
        result << ParagraphTags.new(part).render
      end
    end
    result.join("\n\n")
  end 
end 


# puts "Please enter a markdown file: "
# input = gets.chomp.to_s

# chisel = Chisel.new(input)
# puts chisel.to_s





