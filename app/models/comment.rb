class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :send_to, polymorphic: true
end
