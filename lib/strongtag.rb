class StrongTag

  attr_reader :sentence

  def initialize(sentence = "<p>\nI **Love Big** **Hashtags.**\n</p>")
    @sentence = sentence
  end

  def render
    result = ""
    @sentence.split("**").each_with_index do |phrase, index|
      if index.odd?
        result << "<strong>#{phrase}</strong>"
      else
        result << phrase
      end
    end
    result
  end
end

input = StrongTag.new("Hello")
puts input.render



