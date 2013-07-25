class Student < ActiveRecord::Base
  attr_accessible :name
  belongs_to :house
  
  def assign_to_house(number)
    if number.to_i + rand(100) <= 25
      House.where(name: "Gryffindor")[0].students << self
    elsif (number.to_i + rand(100)).between?(26,50)
      House.where(name: "Hufflepuff")[0].students << self
    elsif (number.to_i + rand(100)).between?(51,75)
      House.where(name: "Ravenclaw")[0].students << self
    elsif number.to_i + rand(100) > 75
      House.where(name: "Slytherin")[0].students << self
    end
  end
  
end