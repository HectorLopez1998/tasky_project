
class UsersController < ApplicationController

    get '/signup' do 
        erb :"users/signup"
    end

    post '/signup' do 
        user = User.new(params)

        if user.username.blank? || user.email.blank? || user.name.blank? || user.password.blank?
            redirect '/signup'
        else 
            user.save
            
            redirect '/tasks'
        end 

        
    end
    
    get '/login' do 
        erb :"users/login"
    end

    post '/login' do 
    end
end