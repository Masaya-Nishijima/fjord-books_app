# frozen_string_literal: true

class UserListController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.all.find { |user| user['email'] == params['id'] }
  end
end
