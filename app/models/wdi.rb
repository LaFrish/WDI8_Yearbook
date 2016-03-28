class Wdi < ActiveRecord::Base
has_many :students
has_many :squads
has_many :instructors
