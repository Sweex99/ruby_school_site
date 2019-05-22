module RemoteStudyHelper
  def count_task_for_each_user(i)
    RemoteStudy.where(subject: @subjects[i][1], active: true, class_room: current_user.class_room).count
  end
end
