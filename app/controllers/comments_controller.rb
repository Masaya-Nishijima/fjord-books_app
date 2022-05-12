# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    send_to =
      if !params['report_id'].nil?
        { type: 'Report', id: params['report_id'].to_i }
      elsif !params['book_id'].nil?
        { type: 'Book', id: params['book_id'].to_i }
      end
    @comment.send_to_type = send_to[:type]
    @comment.send_to_id = send_to[:id]
    if @comment.save
      redirect_to "/#{send_to[:type].downcase}s/#{send_to[:id]}", notice: 'Comment was successfully created.'
    else
      redirect_to '/'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
