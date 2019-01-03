require 'pry'
def dictionary
  post = { 
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
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
      
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array[4] = "I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys. 4 real."
  array.map do |tweet|
    puts word_substituter(tweet)
  end
end





