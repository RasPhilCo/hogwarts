class Houses < ActiveRecord::Base
  attr_accessible :house_name

  has_many :students
end