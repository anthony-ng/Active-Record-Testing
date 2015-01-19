class Skill < ActiveRecord::Base
  has_many :ratings
  has_many :users, :through => :ratings

  validates :name, uniqueness: true

  def self.proficiency_for(skill)
    #take a skill row for input
    #search for the corresponding rating
    #set Rating.proficiency = 0
    #return Rating.proficiency

  end
end
