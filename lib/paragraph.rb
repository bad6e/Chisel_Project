require_relative 'strongtag'
require_relative 'emtag'


class ParagraphTags

	def initialize(sentence = "I Love Paragraphs")
		@sentence = sentence 
	end 

	def render
    result = StrongTag.new(@sentence).render
    result = EmTag.new(result).render
    "<p>\n" + result + "\n</p>"
	end 
end 


