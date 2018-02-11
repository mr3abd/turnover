class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 INITIAL_ALLOWED_POSTS = 3
     has_many :turnovers
     has_many :posts


    def allowed_posts_count
         INITIAL_ALLOWED_POSTS + promocodes.sum(&:allowed_posts)
     end

end
