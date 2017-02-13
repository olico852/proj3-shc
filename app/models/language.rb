class Language < ApplicationRecord
  belongs_to :sglangs, polymorphic:true

  searchable do
    text :name, boost: 5.0
    
  end
end
