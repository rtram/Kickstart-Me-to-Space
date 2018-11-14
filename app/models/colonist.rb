class Colonist < ApplicationRecord
  has_many :trips
  has_many :planets, through: :trips

  validates :username, presence: true ,uniqueness: {case_sensitive:false}
  validates :password, presence: {case_sensitive:false}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :codename, presence: true
  validates :profession, presence: true
  validates :age, presence: true
  validates :gender, presence: true

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
