class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Gravtastic
  gravtastic

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments
  has_many :like_posts
  has_many :like_comments

  def user_name
    self.email.split('.').map(&:capitalize).join(' ').split('@')[0]
  end
  
end
