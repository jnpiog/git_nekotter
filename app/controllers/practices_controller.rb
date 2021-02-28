class PracticesController < ApplicationController
  def index
    @practices = Practice.all
    @practice = Practice.new
  end

  def create
    Practice.create(practice_params)
    redirect_to :root
  end

  private
  def practice_params
    params.require(:practice).permit(:text)
  end
end
