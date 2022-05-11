# frozen_string_literal: true

module UserDecorator
  def resize_avatar
    image_tag  avatar.variant(resize: '100x100') if avatar.attached?
  end
end
