# frozen_string_literal: true

class CommentsController < ApplicationController
  private

  def create_common(send_to)
    @comment = current_user.comments.build(comment_params)
    @comment.send_to_type = send_to[:type]
    @comment.send_to_id = send_to[:id]
    @comment.save!
    redirect_to "/#{send_to[:type].downcase}s/#{send_to[:id]}", notice: 'Comment was successfully created.'
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
