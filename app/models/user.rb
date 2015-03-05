class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :decks, :through => :rounds
  has_many :rounds
  validates :username, presence: true
  validates :password, presence: true

  def self.authenticate(username,password)
    user = User.find_by_username(username)
    if user && user.password == password
      p "succesfully login"
      user
    else
      nil
    end
  end
end
