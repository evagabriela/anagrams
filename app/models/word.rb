class Word < ActiveRecord::Base

  def self.anagrams(user_input)
    keyword = user_input.downcase.split("").sort.join("")

    @results = []
    matching_anagrams = Word.where(:sorted_word => keyword)
    matching_anagrams.each do |item|
        @results << item.word
      end
      @results
  end

end
