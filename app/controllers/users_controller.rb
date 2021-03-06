class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  private

  def find_user
    @user = User.find(params[:id])
  end

end
