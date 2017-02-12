class User < ApplicationRecord
  belongs_to :usertypes, polymorphic:true, dependent: :destroy

end
