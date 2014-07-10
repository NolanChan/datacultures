class Activity < ActiveRecord::Base
  belongs_to :student
  acts_as_paranoid
end
