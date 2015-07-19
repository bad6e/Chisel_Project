class UnorderTag

  attr_reader :sentence

  def initialize(sentence = "* Sushi\n\n* Mexican")
    @sentence = sentence
  end

  def render
    result = ""
    @sentence.split("*").each_with_index do |phrase, index|
      if index.odd?
        result << "<ul>\n<li>#{phrase}</li></ul>"
      else
        result << phrase
      end
    end
    result
  end

end

class UnorderTag
  def initialize(list_items)
    @list_items
  end
end

UnorderTag.new(['* Sushi', '* Mexican'])
# input = UnorderTag.new("* Sushi\n\n* Mexican")
# p input.render



