class Frequency < ApplicationRecord
  belongs_to :occurences, polymorphic:true
end
