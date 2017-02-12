class Condition < ApplicationRecord
  belongs_to :sconditions, polymorphic:true
end
