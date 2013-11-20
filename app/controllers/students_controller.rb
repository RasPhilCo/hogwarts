class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
    
  def create
    @student = Student.new(params[:student])
    @house_generator = rand(1..House.all.count)
    @student.house_id = @house_generator
    @student.save

    if @student.save
      redirect_to students_path, :notice => "The Shorting Hat says: #{@student.house.house_name}! New student added succesfully!"
    else
      redirect_to new_student_path, :notice => "Student already exists! Try someone else."
    end
  end

  def new
    @student = Student.new
  end
end