class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def is_a_bank?
    self.food_bank == "bank"
  end

  def is_a_donor?
    self.donor == "donor"
  end

end
