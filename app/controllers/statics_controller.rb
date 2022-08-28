class StaticsController < ApplicationController
  # skip_before_action :require_login, only: %i[welcome]

  def welcome
    @events = Event.all
  end

  def sample_css; end
end
