require_relative 'paragraph'
require_relative 'header'
require_relative 'unordered'



class Chisel

	def initialize(filename)
    @filename = filename
  end

# * poptarts
# * candy
# * soda

  def to_html
    contents = File.read(@filename)
    parts = contents.split("\n\n")
    result = []

    parts.each do |part|
      if part.start_with?("#")
        result << Header.new(part).render
      # elsif part.start_with?("* ")
      #   result << UnorderTag.new(part).render
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

# class Chisel
#   attr_reader :html_string

#   def initalize(filename)
#     @filename = filename
#   end

#   def parse_markdown
#     # build up the ruby Header objects and tags, etc
#   end

#   def to_html(output_file)
#     # create a file with the html string in it
#   end
# end







