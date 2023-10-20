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


get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}"

  "<h1>2d10</h1>
  <p>#{outcome}</p>"
end


get("/dice/1/20") do
  first_die = rand(1..20)

  outcome = "You rolled a #{first_die} !"

  "<h1>1d20</h1>
  <p>#{outcome}</p>"
end

get("/dice/2/20") do
  first_die = rand(1..20)
  second_die = rand(1..20)
  sum = first_die + second_die

  outcome =  "You rolled a #{first_die} and a #{second_die} for a total of #{sum}"

  "<h1>2d20</h1>
  <p>#{outcome}</p>"
end

get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  forth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + forth_die + fifth_die

  outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, a #{forth_die}, and a #{fifth_die} for a total of #{sum}"

  "<h1>4d4</h1>
  <p>#{outcome}</p>"
end
