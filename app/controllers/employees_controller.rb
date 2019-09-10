class EmployeesController < ApplicationController
    before_action :find_employee, except: [:new, :create, :index]
    def index
        @employees=Employee.all
        render json: {status: "SUCCESS", message: "Employees loaded", data: @employees}, status: :ok
    end

    def show
        render json: {status: "SUCCESS", message: "Employees loaded", data: @employee}, status: :ok
    end

    def create
        @employee=Employee.new(employee_params)
        if @employee.save
            render json: {status: "SUCCESS", message: "Employees added", data: @employee}, status: :ok
        else
            render json: {status: "ERROR", message: "Employee not saved", data: @employee.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        @employee.destroy
        render json: {status: "SUCCESS", message: "Deleted Employee", data: @employee}, status: :ok
    end

    def update
        if @employee.update(employee_params)
            render json: {status: "SUCCESS", message: "Employees updated", data: @employee}, status: :ok
        else
            render json: {status: "ERROR", message: "Employee not updated", data: @employee.errors}, status: :unprocessable_entity
        end
    end

    private
    def find_employee
        @employee = Employee.find(params[:id])
    end
    
    def employee_params
        params.require(:employee).permit(:name, :age, :designation, :company)
    end
end
