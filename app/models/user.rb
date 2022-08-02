class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders

  enum role: {
    guest: 0,
    client: 1,
    admin: 2
  }

  after_initialize do
    if self.new_record?
      self.role ||= :guest
    end
  end
end
