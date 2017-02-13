class Frequency < ApplicationRecord
  belongs_to :occurences, polymorphic:true

  searchable do
    text :name, boost: 5.0
  end
end
