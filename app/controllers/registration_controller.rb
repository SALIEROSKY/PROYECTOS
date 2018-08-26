class RegistrationController < ApplicationController
if user.save
                    render json: {status: 'SUCCESS', message: 'Usuario registrado', user: {id: user.id, email: user.email, name: user.name, auth_token: JsonWebToken.encode({user_id: user.id})}, status: :ok
end
end
