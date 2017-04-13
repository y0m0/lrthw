module Ex25

  def Ex25.break_words(stuff)
    words = stuff.split(' ')
    words
  end

  def Ex25.sort_words(words)
    words.sort
  end

  # print the first word after shifting it off
  def Ex25.print_first_word(words)
    word = words.shift
    puts word
  end

  # print the last word after popping it off
  def Ex25.print_last_word(words)
    word = words.pop
    puts word
  end

  # take in a full sentence and return the sorted words
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end

  # print first and last of word of the sentence
  def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word
    Ex25.print_last_word
  end
end
