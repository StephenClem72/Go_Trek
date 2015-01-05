class User < ActiveRecord::Base

  validates :email, presence: true, uniqueness: true, format: {with: /\S+@{1}\S+[.]\D{2,}/, message: 'is not a valid email address'}
  validates :password_hash, presence: true
  validates :username, presence: true, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

end
