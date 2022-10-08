class InstructorsController < ApplicationController
    
    def index
        instructors = Instructor.all
        render json: instructors
    end

    def show 
        instructor = Instructor.find(params[:id])
        if instructor
            render json: instructor
        else
            render json: {error: "Instructor not found."}, status: 404
        end
    end

    def create
        instructor = Instructor.create(instructor_params)
        render json: instructor, status: 201
    end

    def update
        instructor = Instructor.find(params[:id])
        if instructor
            instructor.update(instructor_params)
            render json: instructor, status: 200
        else
            render json: {error: "Instructor not found."}, status: 404
        end
    end

    private

    def instructor_params
        params.permit(:name)
    end
    
 end
