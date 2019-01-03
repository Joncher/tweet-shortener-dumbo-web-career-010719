require 'pry'
def dictionary
  post = { 
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'}
end

def word_substituter(string)
  array = string.split
  dict = dictionary.keys
  dict = dict.to_s
  array.each_with_index.map do | words, i |
    if dict.include?(words)
      array[i] = dictionary[words]
      binding.pry
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.map do |tweet|
    binding.pry
    puts word_substituter(tweet)
  end
end

def selevtive_tweet
  
end



