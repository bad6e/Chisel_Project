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
        result << Header.new(part)
      else
        result << ParagraphTags.new(part)
      end
    end

    result.join("\n\n")


  end 
end 


