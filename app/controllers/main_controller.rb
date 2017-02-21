class MainController < ApplicationController
  def index
    @obj = Person.new
  end

  def create
    byebug
  end

  private
  def set_person
    params.require(:person).permit(:name, :type)
  end
end
