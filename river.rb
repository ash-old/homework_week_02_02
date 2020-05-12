class River

attr_accessor :name, :capacity

def initialize(name)
  @name = name
  @capacity = []
end

def add_fish(fish)
  @capacity.push(fish)
end

def remove_fish()
  return @capacity.pop
end








end
