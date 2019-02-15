class RemoteStudyController < ApplicationController
  before_action :authenticate_user!

  def index
    @subjects = ["Математика", "Укр. мова", "Укр. література", "Біологія", "Хімія", "Історія", "Правознавство" ]
  end

  def show
    @task = RemoteStudy.where(:class_room => current_user.class_room, :Subject => params[:remote_study_id])
    @per = params[:permitted]
  end

  def new

  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
