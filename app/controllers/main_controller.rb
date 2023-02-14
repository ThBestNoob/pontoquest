class MainController < ApplicationController
  def index
    @teams = Team.all
  end

  def configurations

  end
end
