require './paragraph'
require './header'

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
      elsif part.chars.include?('"')
        part.tr!('"', '\"')
        result << ParagraphTags.new(part).render
      else
        result << ParagraphTags.new(part).render
      end
    end
    result = result.join("\n\n")
    @to_file = "my_output.html"
    output = File.open(@to_file, "w")
      output << result
      puts "Converted #{@filename} (#{@filename.length} lines) to #{@to_file} (#{@to_file.length} lines)"
    output.close
  end
end

input = ARGV.first || "test.md"
puts Chisel.new(input)







