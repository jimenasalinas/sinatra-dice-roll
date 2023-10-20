require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# for more user friendly errors #
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


get("/howdy") do
  return "Hello, world!"
end
#keep running until "control C"

# Now root url

get('/') do

  "<h1>Dice Roll</h1>
  <ul>
    <li><a href=\"/dice/2/6\">Roll two 6-sided dice</a></li>
    <li><a href=\"/dice/2/10\">Roll two 10-sided dice</a></li>
    <li><a href=\"/dice/1/20\">Roll one 20-sided die</a></li>
    <li><a href=\"/dice/2/20\">Roll two 20-sided die</a></li>
    <li><a href=\"/dice/5/4\">Roll five 4-sided dice</a></li>
  </ul>"

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
