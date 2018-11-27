class HomeWorksController < ApplicationController

  def index
    @hometask = HomeTask.all
  end

  def show
    @monday = HomeTask.where(:class_room => params[:id])
    @Tuesday = HomeTask.where(:class_room => params[:id])
    @Wednesday = HomeTask.where(:class_room => params[:id])
    @Thursday = HomeTask.where(:class_room => params[:id])
    @Friday = HomeTask.where(:class_room => params[:id])
    @Saturday = HomeTask.where(:class_room => params[:id])
  end

  def edit
    @hometask = HomeTask.find(params[:id])
  end

  def destroy
    @hometask = HomeTask.find(params[:id])
    @hometask.destroy
    redirect_to home_works_path
  end

  def update
    @hometask = HomeTask.find(params[:id])
    if @hometask.update_attributes(home_task_params)
      redirect_to @hometask
    else
      render :edit
    end
  end

  def create
    @hometask = HomeTask.create(home_task_params)
    if @hometask.save
      render :edit
    end
    return 0
  end

  def new
    @hometask = HomeTask.new
  end

  private
  def home_task_params
    params.require(:home_task).permit(:description, :subject, :class_room, :week)
  end

end
