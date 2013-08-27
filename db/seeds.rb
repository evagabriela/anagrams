File.open(File.expand_path('db/words.txt'),'r').each do |w|
    sorted = w.chomp.downcase.split("").sort.join("")
    word = Word.new(:word => w, :sorted_word => sorted)
    word.save!
  end
