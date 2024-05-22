class CalendarController < ApplicationController
  def index
    @characters = Character.all
  end
end
