class User < ActiveRecord::Base
  has_many :ratings
  has_many :skills, :through => :ratings

  def self.proficiency_for(skill)
    skills = self.find_by(skill: skill)
    skills.update_attributes(proficiency: 0)
  end
end
