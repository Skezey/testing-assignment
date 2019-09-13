class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]
  # GET /schools
  def index
    @schools = School.all
  end

  # GET /schools/1
  def show
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # GET /schools/edit
  def edit
  end

  # POST /schools
  def create
    @school = School.new(school_params)
    if @school.save
      redirect_to @school, notice: "School successfully created"
    else
      render :new
    end
  end

  def update
    if @school.update(school_params)
      redirect_to @school, notice: 'School successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @school.destroy
    redirect_to schools_path, notice: "School deleted"
  end

  # DELETE /schools

  private

  def set_school
    @school = School.find(params[:id])
  end

  def school_params
    params.require(:school).permit(:name, :address, :principal, :capacity, :private_school)
  end

end
