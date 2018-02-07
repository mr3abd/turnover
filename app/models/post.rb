class Post < ApplicationRecord
  before_create :validate_can_post
   belongs_to :user

   private
   def validate_can_post
     allowed_count = self.user.allowed_posts_count
     unless Post.where(user: user).count < allowed_count
       errors.add(:base, "Maximum allowed number of posts reached.")
     end
 end


end
