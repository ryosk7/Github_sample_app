class User < ApplicationRecord
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['nickname']
      user.oauth_token = auth['credentials']['token']
      client = Octokit::Client.new(:access_token => user.oauth_token)
      user.repos_info = client.repos
    end
  end
end
