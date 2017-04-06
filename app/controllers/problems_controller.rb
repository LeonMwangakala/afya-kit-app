class ProblemsController < ApplicationController
  def index
    @problems = Problem.all
  end 

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.create(problem_params)
  end

  def destroy

  end

  private
    def problem_params
      params.require(:problem).permit!
    end

end