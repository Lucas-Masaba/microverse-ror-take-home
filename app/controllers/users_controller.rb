class UsersController < ApplicationController
  USERS_PER_PAGE = 3
  def index
    @page = params.fetch(:page, 0).to_i
    @users = User.offset(@page * USERS_PER_PAGE).limit(USERS_PER_PAGE)
  end

  def show
    @user = User.find(params[:id])
  end
end
