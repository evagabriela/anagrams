get '/:word' do
  @word = params[:word]
  # "Show a list of anagrams for \"#{params[:word]}\""
  @anagrams = Word.anagrams(@word)
 erb :index
end

post '/anagram' do
  @word = params[:user_input]
  # "Show a list of anagrams for \"#{params[:word]}\""
  @anagrams = Word.anagrams(@word)
 erb :index
end



