class HomeWorksController < ApplicationController

  def index
    @monday = HomeTask.where(class_room: current_user.class_room, day: 'Понеділок').order(created_at: :desc)
    # @tuesday = HomeTask.where(:class_room => params[:id])
    # @wednesday = HomeTask.where(:class_room => params[:id])
    # @thursday = HomeTask.where(:class_room => params[:id])
    # @friday = HomeTask.where(:class_room => params[:id])
    # @saturday = HomeTask.where(:class_room => params[:id])
  end

  def show

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
    translate = { 'Monday' => 'Понеділок', 'Tuesday' => 'Вівторок',
                  'Wednesday' => 'Середа', 'Thursday' => 'Четвер',
                  'Friday' => 'П`ятниця', 'Saturday' => 'Субота' }
    data = (params[:start_date]['data(1i)'] + '-' +
            params[:start_date]['data(2i)'] + '-' +
            params[:start_date]['data(3i)']).to_s
    @home_task = HomeTask.create(subject: home_task_params[:subject], description: home_task_params[:description],
                                 day: translate[Date.parse(data).strftime('%A')],
                                 data: data, class_room: current_user.class_room)
    redirect_to home_works_path if @home_task.save
  end

  def new
    @home_task = HomeTask.new
  end

  private

  def home_task_params
    @permit = params.require(:home_task).permit(:subject, :description, :data)
  end
end
