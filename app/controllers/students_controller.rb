class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end
  
  def create
    @student = Student.create(params[:student])
    redirect_to students_enter_number_path(id: @student.id)
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def enter_number
    @student = Student.find(params[:id])
  end
  
  def assign_student_to_house
    @student = Student.find(params[:id])
    @student.assign_to_house(params[:number])
    redirect_to house_path(@student.house), notice: "You have been added to the #{@student.house.name} house!"
  end
  
end