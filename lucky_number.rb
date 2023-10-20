require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  return "Hello, world!"
end
#keep running until "control C"

# Now root url

get('/') do
  lucky_num = rand(100)
  return "Your lucky number for today is " + lucky_num.to_s
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end
