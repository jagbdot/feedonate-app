class User < ActiveRecord::Base
  has_many :bank_donations, class_name: "Donation", foreign_key: "bank_id"
  has_many :donor_donations, class_name: "Donation", foreign_key: "donor_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def donations
    Donation.where("bank_id = ? OR donor_id = ?", self.id, self.id)
  end

  def is_a_donor?
    self.type_of_user == "donor"
  end

  def get_user_products
    sum = 0
    total = self.donations.each do |donation|
      puts "Donaciones" + self.donations.length.to_s
      sum += donation.products.length 
    end
    sum
  end

  def get_porcentaje
    self.get_user_products * 100 / Product.all
  end

  def get_banks
    User.where(type_of_user: 'bank')
  end

  def self.get_user_by_number
    User.all[-3..1]
  end

  def self.get_winner_user
    id = 0
    total = 0
    user_winner = 1
    array_users = User.all.to_a

    array_users.sort! do |user1, user2|
      user2.get_user_products <=> user1.get_user_products
    end
    array_users[0]
  end

  def self.get_last_winner_users
    id = 0
    total = 0
    user_winner = 1
    array_users = User.all.to_a

    array_users.sort! do |user1, user2|
      user2.get_user_products <=> user1.get_user_products
    end
    array_users[1..2]
  end

end
