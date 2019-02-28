require "pry"

def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split
  keys_array = dictionary.keys
  counter = 0
  
  while counter < keys_array.length
  
    tweet_array.each do |word|
      if word == keys_array[counter]
        word = dictionary[keys_array[counter]]
      else
        word
      end
    end
    counter += 1
  end
  tweet_array.join(" ")
  binding.pry
end