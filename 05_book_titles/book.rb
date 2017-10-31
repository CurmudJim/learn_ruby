class Book
	attr_accessor :title

  def title
    lowercase_words = ["a","an","the","for","and","nor","but","or","yet","so","at","around","by","after","along","for","from","in", "of","on","to","with","without"]
    title = @title.split.each { |word| if !lowercase_words.include?(word); word.capitalize! end}
		title.first.capitalize!
    title.last.capitalize!
    title.join ' '
  end

end
