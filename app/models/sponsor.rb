class Sponsor < ApplicationRecord
  has_many :donations
  has_many :planets, through: :donations

  validates :username, presence: true ,uniqueness: {case_sensitive:false}
  validates :password, presence: {case_sensitive:false}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :net_worth, presence: true
  validates :goal, presence: true

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
