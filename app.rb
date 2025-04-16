require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get ("/process_roll") do
  @num_of_dice = params.fetch("dice").to_i
  @num_of_sides = params.fetch("sides").to_i
  @rolls=[]
  @num_of_dice.times do 
    @rolls.push(rand(1..@num_of_sides))
  end
  erb(:results)
end
