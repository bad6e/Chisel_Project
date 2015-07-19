require "pry"

class UnorderTag

  attr_reader :sentence

  def initialize(sentence = "* Sushi\n\n* Mexican")
    @sentence = sentence
  end

  def render
    a = @sentence.split("\n\n")
    a.each do |word|
      word.sub!("* ","<li>")
      word.sub!("\n","")
      puts word
      word.insert(-1,"</li>")
    end
    a.unshift("<ul>\n")
    a.push("\n</ul>")
    a.join(" ")
  end


end

# class UnorderTag
#   def initialize(list_items)
#     @list_items
#   end
# end

UnorderTag.new("* Sushi\n\n* Mexican")
input = UnorderTag.new("* Sushi\n\n* Mexican")




  #  if index.odd?
  #       result << "<ul>\n<li>#{phrase}</li></ul>"
  #     else
  #       result << phrase
  #     end
  #   end
  #   result
  # end
