class Bears

attr_accessor :name, :type, :stomach

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def eat_fish(river)
  @stomach.push(river.remove_fish)
end

def roar
  return 'Roar!'
end

def food_count
  @stomach.count
end

end
