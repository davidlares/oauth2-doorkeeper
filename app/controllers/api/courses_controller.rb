class Api::CoursesController < ApplicationController

  # Allowed method
  def index
    # Getting Courses (ActiveRecord)
    @courses = Course.all
  end

end
