class HomeController < ApplicationController
  def index
    @key = ENV['GITHUB_KEY']
    @secret = ENV['GITHUB_SECRET']
  end
end
