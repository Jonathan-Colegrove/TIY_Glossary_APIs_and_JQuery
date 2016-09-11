class User < ApplicationRecord

  # Factory method to create a user from some omniauth data
# Omniauth will use this to build a *NEW* user for us
  def self.from_omniauth(authentication_data)
    user = User.where(provider: authentication_data['provider'],
                      uid: authentication_data['uid']).first_or_create

    user.name         = authentication_data.info.name
    user.nickname     = authentication_data.info.nickname
    user.access_token = authentication_data.info.access_token

    user.save!

    return user
  end
end
