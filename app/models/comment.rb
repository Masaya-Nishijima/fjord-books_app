# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :send_to, polymorphic: true
end
