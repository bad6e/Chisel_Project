require "pry"

class UnorderTag

  attr_reader :sentence

  def initialize(sentence = "* Sushi\n\n* Mexican")
    @sentence = sentence
  end

  def render
    a = @sentence.split("\n")
    a.each do |word|
      word.sub!("* ","\t<li>")
      word.insert(-1,"</li>\n")

    end
    a.unshift("<ul>\n")
    a.push("</ul>")
    a.join("")
  end
end


UnorderTag.new("* Sushi\n\n* Mexican")
input = UnorderTag.new("* Sushi\n\n* Mexican")


