class Recipe < ActiveRecord::Base
  has_many :comments 
  attr_protected :views
end
