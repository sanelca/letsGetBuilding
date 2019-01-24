require 'rest-client'

searches_made = 0

loop do
	puts "Please enter your search query: "
	query = gets.chomp.gsub(" ", "+")

	response = RestClient.get("http://www.google.com", params: {'q' => query})

	puts "Response code is: #{response.code}\n\n"
	puts "Response headers are: #{response.headers}\n\n"
	searches_made += 1
	puts "You have made #{searches_made} searches tnis session"
end
