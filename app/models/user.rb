class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :photos
  has_many :comments
  has_many :negatives
  # acts_as_taggable # Alias for acts_as_taggable_on :tags
  # acts_as_taggable_on :names
end
# @user = User.new
# @user.tag_list
# @user.save
#
# @user.tag_list
# @user.save
#
# @user.reload
# @user.tag_list
