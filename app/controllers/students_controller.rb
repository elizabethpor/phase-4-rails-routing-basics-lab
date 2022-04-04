class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        sorted_by_grade = Student.all.sort_by { |student| -student.grade }
        render json: sorted_by_grade
    end

    def highest_grade
        best_student = Student.all.sort_by { |student| -student.grade }.first
        render json: best_student
    end
end
