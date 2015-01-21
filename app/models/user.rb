class User < ActiveRecord::Base
  has_many :ratings
  has_many :skills, :through => :ratings

  def proficiency_for(skill)
    self.skills.include?(skill)
  end

  def set_proficiency_for(skill, rank=0)
    id = self.id
    rating_user = Rating.where(user_id: id)
    rating_user.first.proficiency = rank
  end
end
