class CalendarController < ApplicationController
  before_action :set_beginning_of_week

  def index
    @characters = Character.all
  end

  private
  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end
end
