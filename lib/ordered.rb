class OrderTag

  attr_reader :sentence

  def initialize(sentence = "1. Sushi\n2. Mexican")
    @sentence = sentence
  end

  def render
    a = @sentence.split("\n")
    a.each do |word|
      word.sub!(word[0..2],"\t<li>")
      word.insert(-1,"</li>\n")
    end
    a.unshift("<ol>\n")
    a.push("</ol>")
    a.join("")
  end
end



