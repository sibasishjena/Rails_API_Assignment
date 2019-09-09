class EmployeesController < ApplicationController
    def index
        @employees=Employee.all
        render json: {status: "SUCCESS", message: "Employees loaded", data: @employees}, status: :ok
    end

    def show
        @employees=find_employee
        render json: {status: "SUCCESS", message: "Employees loaded", data: @employees}, status: :ok
    end
    def find_employee
        @employee = Employee.find(params[:id])
    end
    skip_before_action find_employee, only: [:new, :create, :index]
end
