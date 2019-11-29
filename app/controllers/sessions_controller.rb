class SessionsController < ApplicationController
def new
    
end

def create
    username = session[:name] = params[:name]
    username.nil? \\ username.empty ? redirect_to('/login') : redirect_to('/')
end

def destroy
    session.delete :name
end
end
