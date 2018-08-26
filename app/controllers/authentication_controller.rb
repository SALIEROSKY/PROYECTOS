class AuthenticationController < ApplicationController
def payload(user)
      return nil unless user and user.id {
         user: {id: user.id, email: user.email, name: user.name, auth_token: JsonWebToken.encode({user_id: user.id})}
          }
end
end
