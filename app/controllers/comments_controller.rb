# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
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
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
