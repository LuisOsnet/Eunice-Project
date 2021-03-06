# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @advertisements = welcome_service(status: true).show_all
  end

  private

  # This method initialize the service
  # This service has an attribute called params that it will filed with the
  # params that the controller send
  def welcome_service(hash_params)
    @welcome_service ||= WelcomeService.new(hash_params)
  end
end
