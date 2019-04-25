class Zoo
  attr_reader :name, :zoo, :location, :animal

  @@location=[]
  def initialize(name,location)
    @name =name
    @location=location
     @@location<< self
  end


 def self.all
   @@location
 end

 def animals
   Animal.all.select do |animal|
     animal.zoo == self
   end
 end

  def animal_species
    species_arr=  Animal.all.map do |animal|
      animal.species
    end
    species_arr.uniq
  end

  def find_by_species(species)
    Animal.all.select do |animal|
      animal.species == species
    end
  end

  def animal_nicknames
    name_arr=Animal.all.map do |animal|
      animal.nickname
    end
    name_arr
  end

  def self.find_by_location(location)
    self.all.select do |zoo|
      zoo.location == location
    end
 end


end
