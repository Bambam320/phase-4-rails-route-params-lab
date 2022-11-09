class StudentsController < ApplicationController

  def all
    students = Student.all
    render json: students
  end

  def show
    found = Student.find(params[:id])
    render json: found
  end

  def index
    byebug
  end
end
