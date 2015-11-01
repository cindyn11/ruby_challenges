puts "Are you annoyed with me yet? Please answer Y/N:"
answer = gets.chomp.downcase

while (answer.downcase == "n")
	puts "Are you annoyed with me yet? Please answer Y/N:"
	
answer = gets.chomp.downcase
end

#iterating with while loops
all_tweets = [ 
	"My first tweet",
	"My second tweet",
	"My fourth tweet",
	"I have the world's most boring tweets"
]

total_number_of_tweets = all_tweets.size
tweets_displayed = 0

while (tweets_displayed < total_number_of_tweets)
	puts all_tweets[tweets_displayed]
	tweets_displayed += 1
	puts tweets_displayed
end
