class String
  def censor(bad_word)
    self.gsub! "#{bad_word}", "CENSORED"
  end

  def number_of_chars
    size
  end
end

p "The bunny was in trouble with the king's bunny".number_of_chars