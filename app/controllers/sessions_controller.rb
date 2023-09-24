class SessionsController < ApplicationController
    def create
      auth = request.env['omniauth.auth']
      # Handle user authentication and session creation here
      # For example, create a user or log them in.
    end
  end