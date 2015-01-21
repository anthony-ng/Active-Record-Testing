class Skill < ActiveRecord::Base
  has_many :ratings
  has_many :users, :through => :ratings

  validates :name, uniqueness: true

  def user_with_proficiency(rank)
    rating_user = Rating.where(skill_id: self.id).first
    user = User.find(rating_user.user_id)
  end
end
