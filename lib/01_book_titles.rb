class Book
  def title=(name)
      @name = name
  end

  def title
      words = @name.split
      dont_use = ["and","the", "of", "in", "a", "an"]
      words.map!.with_index do |word, idx|
          if dont_use.include?(word) && idx > 0
              word
          else
              word.capitalize
          end
      end
      words.join(" ")
  end
end
