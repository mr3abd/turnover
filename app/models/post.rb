class Post < ApplicationRecord
  before_create :validate_can_post
   belongs_to :user

validate :validate_can_post, :on => :create

   private
   def validate_can_post
     allowed_count = self.user.allowed_posts_count
     unless Post.where(user: user).count < allowed_count
       errors.add(:base, "Maximum allowed number of posts reached. الرجاء تواصل مع المدير")
     end
 end


end
