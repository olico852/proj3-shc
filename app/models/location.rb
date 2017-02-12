class Location < ApplicationRecord
  belongs_to :geographies, polymorphic:true
end
