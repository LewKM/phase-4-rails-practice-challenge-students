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
 end
