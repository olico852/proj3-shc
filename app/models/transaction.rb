class Transaction < ApplicationRecord
  before_save {self.email = email.downcase}

  belongs_to :fammember
  belongs_to :patient
  belongs_to :caregiver

end
