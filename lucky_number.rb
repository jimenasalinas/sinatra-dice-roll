require "sinatra"

get("/howdy") do
  return "Hello, world!"
end
#keep running until "control C"

# Now root url

get('/') do
  lucky_num = rand(100)
  return "Your lucky number for today is " + lucky_num.to_s
end
