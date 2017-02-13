class Caregiver < ApplicationRecord
  before_save {self.email = email.downcase}
  has_many :conditions, as: :sconditions
  has_many :users, as: :usertypes, dependent: :destroy
  has_many :locations, as: :geographies, dependent: :destroy
  has_many :languages, as: :sglangs, dependent: :destroy
  has_many :frequencies, as: :occurences, dependent: :destroy

  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false},
  format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :password, length: {in: 8..72}, on: :create

  validates :contact, length: {is: 8},
  presence: true

  has_secure_password


  searchable do
    integer :id
    text :first_name, boost: 5.0
    text :last_name, boost: 5.0
    integer :yearsofexperience
    text :experiencedescription
  end

  def self.find_and_authenticate(params)
    Caregiver.find_by_email(params[:email]).try(:authenticate, params[:password])
  end
end
