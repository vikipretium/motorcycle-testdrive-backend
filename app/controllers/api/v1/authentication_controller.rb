class Api::V1::AuthenticationController < ApplicationController
  def create
    p params.inspect
  end
end