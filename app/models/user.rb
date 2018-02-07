class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 INITIAL_ALLOWED_POSTS = 3
         has_many :turnovers
         has_many :posts
         has_many :promo_codes_users
           has_many :promo_codes, through: :promo_codes_users
           def allowed_posts_count
               INITIAL_ALLOWED_POSTS + promo_codes.sum(&:allowed_posts)
           end

end
