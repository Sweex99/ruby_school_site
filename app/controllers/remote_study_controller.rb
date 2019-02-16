class RemoteStudyController < ApplicationController
  before_action :authenticate_user!

  def index
    @subjects = [["Математика", "math"], ["Укр. мова", "language"], ["Укр. література", "literature"], ["Біологія", "biology"],
                 ["Хімія", "chemistry"], ["Історія", "history"], ["Правознавство", "law"]]
  end

  def show
    @task = RemoteStudy.where(:class_room => current_user.class_room, :Subject => params[:remote_study_id])
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
