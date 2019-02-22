class RemoteStudyController < ApplicationController
  before_action :authenticate_user!

  def index
    @subjects = [["Математика", "math"], ["Укр. мова", "language"], ["Укр. література", "literature"], ["Біологія", "biology"],
                 ["Хімія", "chemistry"], ["Історія", "history"], ["Правознавство", "law"]]
  end

  def show
    @task = RemoteStudy.where(:class_room => current_user.class_room)
  end

  def new
    @task = RemoteStudy.new
  end

  def create
    @task = RemoteStudy.new(post_params)
    redirect_to @task if @task.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:remote_study).permit(:title, :Subject, :class_room,:body, :Ylink, :Slink)
  end
end
