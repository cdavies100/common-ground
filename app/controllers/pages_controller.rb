class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :lookbook]

  def home
  end
end
