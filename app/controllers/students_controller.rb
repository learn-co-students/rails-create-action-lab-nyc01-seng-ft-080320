class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new #creates the new Student instance
    #hint: find the attr. you need by checking out the create_student migration
    @student.first_name = params[:first_name] #fills in it's first_name attr. with the user input data (params[:first_name]) 
    @student.last_name = params[:last_name] #fills in it's first_name attr. with the user input data (params[:last_name]) 
    @student.save #saves this instance to the database. 
    redirect_to student_path(@student) #redirect_to the 
  end

end
