class Api::CoursesController < ApplicationController

  # doorkeeping restriction
  before_action :doorkeeper_authorize!
  before_action :set_user!
  # Allowed method
  def index
    # Getting Courses (ActiveRecord)
    # @courses = Course.all
    @courses = @user.courses
  end

  private
    def set_user
      @user = User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end

end
