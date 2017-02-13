class Location < ApplicationRecord
  belongs_to :geographies, polymorphic:true

  searchable do
    text :name, boost: 5.0

  end
end
