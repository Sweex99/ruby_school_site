class HomeWorksController < ApplicationController
  before_action :authenticate_user!

  def index
    @monday = get_home_task"Понеділок", 'Monday'
    @tuesday = get_home_task"Вівторок", 'Tuesday'
    @wednesday = get_home_task "Середа", 'Wednesday'
    @thursday = get_home_task "Четвер", 'Thursday'
    @friday = get_home_task "П`ятниця", 'Friday'
    @saturday = get_home_task "Субота", 'Saturday'
  end

  def show
    @date = Date.parse('Monday')
    @date + (@date > Date.today ? 0 : 7)
    @date.strftime('%d-%w-%Y')
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
      redirect_to :home_work
    else
      render :edit
    end
  end

  def create
    translate = {'Monday' => 'Понеділок', 'Tuesday' => 'Вівторок',
                 'Wednesday' => 'Середа', 'Thursday' => 'Четвер',
                   'Friday' => 'П`ятниця', 'Saturday' => 'Субота'}
    data = (params[:start_date]['date_task(3i)'] + '-' +
        params[:start_date]['date_task(2i)'] + '-' +
        params[:start_date]['date_task(1i)']).to_s
    @home_task = HomeTask.create(subject: home_task_params[:subject], description: home_task_params[:description],
                                 day_by_week: translate[Date.parse(data).strftime('%A')],
                                 date_task: data, class_room: current_user.class_room)

    redirect_to home_works_path if @home_task.save
  end

  def new
    @home_task = HomeTask.new
  end

  private

  def date_of_next(day)
    date = Date.parse(day)
    delta = date > Date.today ? 0 : 7
    date + delta
    return date.strftime('%Y-%m-%d')
  end


  def home_task_params
    params.require(:home_task).permit(:subject, :description, :date_task)
  end

  def get_home_task(day, type_day)
   HomeTask.where(class_room: current_user.class_room, :date_task => date_of_next(type_day), :day_by_week => day).order(created_at: :desc)
  end

end
