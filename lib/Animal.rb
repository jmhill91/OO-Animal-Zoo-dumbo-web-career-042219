class Animal
  attr_reader  :species, :nickname
  attr_accessor :weight, :zoo

  @@all= []
  def initialize(nickname,species, weight)
    @nickname=nickname
    @weight=weight
    @species=species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    self.all.select do |animal|
      animal.species == species
    end
  end


end
