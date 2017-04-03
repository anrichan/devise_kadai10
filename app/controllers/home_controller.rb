class HomeController < ApplicationController
  # ユーザがログインしていないと"show"にアクセスできない
  before_action :authenticate_user!, only: [:show, :index]
  def index
    @profile = Profile.new
    @profiles = Profile.all
    @articles = current_user.articles

  end

  def show
  end
end
