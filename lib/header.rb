class Header

  attr_reader :count, :heading

	def initialize(sentence = "### I like Hashtags")
		parts = sentence.split("#")
		@heading = parts.pop.lstrip
		@count = parts.count
	end

	def render
		"<h#{count}>#{heading}</h#{count}>"
	end
end


