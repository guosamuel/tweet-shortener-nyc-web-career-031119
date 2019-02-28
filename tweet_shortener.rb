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
        tweet_array[tweet_array.index(word)] = dictionary[keys_array[counter]]
      end
    end
    counter += 1
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet_string|
    binding.pry
    puts word_substituter(tweet_string.join(" "))
  end
end