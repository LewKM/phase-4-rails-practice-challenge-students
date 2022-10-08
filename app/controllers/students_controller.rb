class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def show 
        student = Student.find(params[:id])
        if student
            render json: student
        else
            render json: {error: "Student not found."}, status: 404
        end
    end

    def create
        student = Student.create(student_params)
        render json: student, status: 201
    end

    private

    def student_params
        params.permit(:name, :age, :major, :instructor_id)
    end
end

