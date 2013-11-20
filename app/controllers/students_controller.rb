class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
    
  def create
    @student = Student.new(params[:student])
  
    @student.save

    redirect_to students_path
  end

  def new
    @student = Student.new
  end
end