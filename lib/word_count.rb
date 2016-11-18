class String
define_method(:word_count) do |string|
  input = string.split(" ")
  most_common_word = nil
  most_common_word_count = nil

  idx1 = 0
  while idx1 < input.length
    word = input[idx1]
    count = 0

    idx2 = 0
    while idx2 < input.length
      if input[idx2] == word
        count += 1
      end
      idx2 += 1
    end

    if (most_common_word == nil) || (count > most_common_word_count)
      most_common_word = word
      most_common_word_count = count
    end

    idx1 += 1
  end

  return [most_common_word, most_common_word_count]
end
end
