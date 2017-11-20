class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :music]

  def home
  end

  def about
  end

  def music
  end

end
