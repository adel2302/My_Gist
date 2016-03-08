class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gists

  def self.search(query)
    if query
      where(["name LIKE ?", "%#{query}%"])
    else
       all
    end
  end
end
