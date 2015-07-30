class EmTag

  attr_reader :sentence

  def initialize(sentence = "<p>\nI *Love Big* *Hashtags.*\n</p>")
    @sentence = sentence
  end

  def render
    result = ""
    @sentence.split("*").each_with_index do |phrase, index|
      if index.odd?
        result << "<em>#{phrase}</em>"
      else
        result << phrase
      end
    end
    result
  end
end