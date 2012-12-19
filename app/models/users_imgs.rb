class UsersImgs < ActiveRecord::Base
  belongs_to :user
  belongs_to :img
  # attr_accessible :title, :body
end
