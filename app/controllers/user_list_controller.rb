class UserListController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.all.select { |user| user['email'] == params['id'] }[0]
  end
end
