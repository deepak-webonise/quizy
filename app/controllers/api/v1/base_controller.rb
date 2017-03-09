module Api
  module V1
    class BaseController < ApplicationController
      include ActionController::HttpAuthentication::Token::ControllerMethods
      include ActionController::Serialization
    end
  end
end
