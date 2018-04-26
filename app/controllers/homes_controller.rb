class HomesController < ApplicationController
  def top
    @users = User.all
  end
  def index
    @users = User.all
    @client = Octokit::Client.new(:access_token => current_user.oauth_token)
  end
end
