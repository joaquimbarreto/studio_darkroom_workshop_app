class WelcomeController < ApplicationController
  def index
    @studios = Studio.all
  end
end
