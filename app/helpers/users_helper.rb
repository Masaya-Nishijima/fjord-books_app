# frozen_string_literal: true

module UsersHelper
  def resize_image_tag(avatar, size)
    image_tag avatar.variant(resize: size) if avatar.attached?
  end
end
