class AdminPanelController < ApplicationController
  before_action :must_be_admin

  def show_my_student
    @students = User.where(class_room: current_user.class_room)
  end

  def show_user
    @users = User.all
  end

  def add_admin
    user = User.find(params[:id])
    user.remove_role user.roles.last # user only has one role
    user.add_role(:admin)
    respond_to do |format|
      format.html { redirect_to show_user_path, notice: 'Task was successfully add.' }
      format.json { head :no_content }
    end
  end

  def delete_admin
    user = User.find(params[:id])
    user.remove_role :admin # user only has one role
    respond_to do |format|
      format.html { redirect_to show_user_path, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def new_year
    @users = User.where(class_room: current_user.class_room)
  end

  def implementation_new_year
    User.update_all('class_room = class_room + 1')

    respond_to do |format|
      format.html { redirect_to new_year_path, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_teacher
    @teacher = User.create(name: params[:name], email: params[:email])
    @teacher.remove_role user.roles.last
    user.add_role(:teacher)
    respond_to do |format|
      format.html { redirect_to new_year_path, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
