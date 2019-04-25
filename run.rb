require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

felix= Animal.new("flex","cat",100)
john= Animal.new("johhny","tiger",150)
mike= Animal.new("mikey","lion",100)
dougie=Animal.new("doug","dog",105)
snoop_dogg= Animal.new("snoop","dog",200)

zoo_a=Zoo.new("zooA","bronx")
zoo_b=Zoo.new("zooB","brooklyn")
zoo_c=Zoo.new("zooC", "NYC")

felix.zoo=zoo_a
john.zoo=zoo_b
mike.zoo=zoo_c
dougie.zoo=zoo_c
snoop_dogg.zoo=zoo_c

binding.pry
puts "done"
