class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end
  
  def create
    @student = Student.create(params[:student])
    # @student.assign_to_house
    redirect_to students_path
  end
  
  def show
    @student = Student.find(params[:id])
  end
end