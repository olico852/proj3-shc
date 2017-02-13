class Condition < ApplicationRecord
  belongs_to :sconditions, polymorphic:true

  searchable do
    text :name, boost: 5.0
  end
end
