class UsersController < ApplicationController
  USERS_PER_PAGE = 5
  def index
    @page = params.fetch(:page, 0).to_i
    # @users = User.offset(@page * USERS_PER_PAGE).limit(USERS_PER_PAGE)

    @users = if params[:query].present?
               User.where('status LIKE ?', "%#{params[:query]}%")
             else
               User.offset(@page * USERS_PER_PAGE).limit(USERS_PER_PAGE)

             end
  end

  def show
    @user = User.find(params[:id])
  end
end
