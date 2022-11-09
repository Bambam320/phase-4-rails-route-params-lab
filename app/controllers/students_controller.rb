class StudentsController < ApplicationController

  def index
    if params[:name] 
      students = Student.where(last_name: params[:name].capitalize).or(Student.where(first_name: params[:name].capitalize))
      render json: students
    else
      students = Student.all
      render json: students
    end
  end

  def show
    found = Student.find(params[:id])
    render json: found
  end

end
