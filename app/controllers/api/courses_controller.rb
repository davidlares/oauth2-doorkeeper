class Api::CoursesController < ApplicationController

  # doorkeeping restriction
  before_action :doorkeeper_authorize!
  # Allowed method
  def index
    # Getting Courses (ActiveRecord)
    @courses = Course.all
  end

end
