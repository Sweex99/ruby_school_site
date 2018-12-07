class HomeWorksController < ApplicationController

  def index
    @home_task = HomeTask.all
  end

  def show
    @monday = HomeTask.where(:class_room => params[:id])
    @tuesday = HomeTask.where(:class_room => params[:id])
    @wednesday = HomeTask.where(:class_room => params[:id])
    @thursday = HomeTask.where(:class_room => params[:id])
    @friday = HomeTask.where(:class_room => params[:id])
    @saturday = HomeTask.where(:class_room => params[:id])
  end

  def edit
    @home_task = HomeTask.find(params[:id])
  end

  def destroy
    @home_task = HomeTask.find(params[:id])
    @home_task.destroy
    redirect_to home_works_path
  end

  def update
    @home_task = HomeTask.find(params[:id])
    if @home_task.update_attributes(home_task_params)
      redirect_to @home_task
    else
      render :edit
    end
  end

  def create
    @home_task = HomeTask.create(home_task_params)
    if @home_task.save
      render :edit
    end
    return 0
  end

  def new
    @home_task = HomeTask.new
  end

  private
  def home_task_params
    params.require(:home_task).permit(:description, :subject, :class_room, :week)
  end

end
