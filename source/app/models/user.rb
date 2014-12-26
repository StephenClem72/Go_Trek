class User < ActiveRecord::Base

  validates :email, presence: true, uniqueness: true, format: {with: /\S+@{1}\S+[.]\D{2,}/, message: 'is not a valid email address'}
  validates :password, presence: true
  validates :username, presence: true, uniqueness: true



end
