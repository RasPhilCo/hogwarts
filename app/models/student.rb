class Student < ActiveRecord::Base
  attr_accessible :name, :house_id
  belongs_to :house

  validates :name, presence: true, uniqueness: true
end