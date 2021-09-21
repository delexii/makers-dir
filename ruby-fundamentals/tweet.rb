# I'm a client working for the Blank House. We want to display positive tweets about our president on our website. However, our president is kind of unpopular, and we pretty much only receive negative press. Write me a program that filters out the following words from tweets: "sucks", "bad", "hate", "foolish", and the most popular: "danger to society". Replace each negative word or phrase them with the word "CENSORED". Some test tweets have been provided for you.

# Steps
# program that filters out negative words - banned phrases
# replace each word filtered out with CENSORED

test_tweets = [
    "This president sucks!",
    "I hate this Blank House!",
    "I can't believe we're living under such bad leadership. We were so foolish",
    "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
    ]
  
banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

# one way of solving the problem

def censor (tweet, list_of_phrases)
  list_of_phrases.each { |e| tweet.gsub! e, "CENSORED" }
  puts tweet
end

censor(test_tweets.sample, banned_phrases)

# another way of solving the problem

# words = test_tweets.join(" ").split

# i = 0

# for i in 0..words.size
#   x = 0
#   while x < banned_phrases.size
#     if words[i] == banned_phrases[x]
#       words[i] = "CENSORED"
#     else
#       x += 1
#     end
#   end
# end
# p words
