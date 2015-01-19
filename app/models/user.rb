class User < ActiveRecord::Base
  has_many :ratings
  has_many :skills, :through => :ratings

  def self.proficiency_for(skill)
    #take a skill row for input
    #search for the corresponding rating
    #set Rating.proficiency = 0
    #return Rating.proficiency
    Rating.find_by_skill_id(skill.id).update_attributes(proficiency: 0)
  end
end
