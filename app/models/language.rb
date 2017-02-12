class Language < ApplicationRecord
  belongs_to :sglangs, polymorphic:true
end
