class String
  def word_count (word)
    count = 0
    inputs = self.downcase.split(" ")
    word = word.downcase
    inputs.each do |input|
      if input == word
      count += 1
      end
    end
      count
  end
end
