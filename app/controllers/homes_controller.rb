class HomesController < ApplicationController
  def top
    @users = User.all
  end
  def index
    @users = User.all
    # @users.each do |user|
    #   @client = user.repos_info
    # end
    @users.each do |user_info|
      @client = Octokit::Client.new(:access_token => user_info.oauth_token)
    end
  end
end
