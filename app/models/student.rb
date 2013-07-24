class Student < ActiveRecord::Base
  attr_accessible :name
  belongs_to :house
  
  # def assign_to_house
  #   
  # end
end