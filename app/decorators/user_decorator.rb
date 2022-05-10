# frozen_string_literal: true

module UserDecorator
  def resize_avatar(user)
    user.avatar.variant(resize: "100x100") if user.avatar.attached?
  end
end
