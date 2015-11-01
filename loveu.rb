# puts "Are you good or bad?"
# answer = gets.chomp.downcase

# if (answer == "good")
	# puts "I love you!"
# elsif 
	# puts "I STILL love you!"
# end

moods = ['good', 'bad']

puts "Are you good or bad?"
answer = moods
answer = gets.chomp.downcase
while (answer == "bad")
	puts "I still love you!"
	answer = gets.chomp.downcase
end
while (answer == "good")
	puts "I love You!"
	answer = gets.chomp.downcase

end

#iterating with while loops
 #	all_tweets = [ 
		# "My first tweet",
		# "My second tweet",
		# "My fourth tweet",
		# "I have the world's most boring tweets"
	# ]

	# total_number_of_tweets = all_tweets.size
	# tweets_displayed = 0

	# while (tweets_displayed < total_number_of_tweets)
		# puts all_tweets[tweets_displayed]
		# tweets_displayed += 1
		# puts tweets_displayed
	# end
