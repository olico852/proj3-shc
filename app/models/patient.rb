class Patient < ApplicationRecord
  belongs_to :fammember
  has_many :conditions, as: :sconditions, dependent: :destroy
  has_many :locations, as: :geographies, dependent: :destroy
  has_many :languages, as: :sglangs, dependent: :destroy
  has_many :frequencies, as: :occurences, dependent: :destroy

end
